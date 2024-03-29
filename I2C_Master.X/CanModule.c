/* 
 * File:   CanModule.h
 * Author: dfoehl
 *
 * Created on 12. Juni 2020, 00:37
 */

#include <pic18f26k83.h>

#include "CanCommands.h"
#include "version.h"

#include "CanModule.h"

#define CAN_REQUEST_MASK (0x80u)
#define CAN_GET_CMD(value_) (value_ & ~CAN_REQUEST_MASK)

char CANADRH = 0x00;
char CANADRL = 0x00;

void I2CScan(void) {
    for(char i = 1; i <= 127; i++) {
        I2C1CNT = 0;
        I2C1ADB1 = i<<1;
        I2C1CON0bits.S = 1;
        int j = 0;
        while (500 > j++ );
        if (!I2C1CON1bits.ACKSTAT) {
            char data[2];
            data[0] = CANCMD_SLAVE;
            data[1] = i;
            SendCanFrame(data, 2);
        }
    }
    char data[2];
    data[0] = CANCMD_SLAVE;
    data[1] = 0xFF;
    SendCanFrame(data, 2);
}

void RequestSlaveData(void) {
    I2C1CNT = RXB1D2;
    I2C1ADB1 = RXB1D1;
    I2C1CON0bits.S = 1;
    char data[6];
    data[0] = CANCMD_SLAVE_DATA;
    data[1] = RXB1D1;
    char i = 0;
    while(i <= RXB1D2) {
        while(!I2C1STAT1bits.RXBF);
        I2C1CON1bits.ACKDT = 0;
        data[i+2] = I2C1RXB;
        i++;
    }
    I2C1CON1bits.ACKCNT = 0;
    SendCanFrame(data,RXB1DLCbits.DLC);
}

void HandleRequest(void) {
    if(RXB1DLCbits.DLC > 0) {
        switch (CAN_GET_CMD(RXB1D0)) {
            case CANCMD_SLAVE:
                if(RXB1DLCbits.DLC == 2) I2CScan();
                break;
            case CANCMD_VERSION:
                if(RXB1DLCbits.DLC == 1) {
                    char data[] = { 00, VERSION };
                    SendCanFrame(data, 2);
                }
                break;
            case CANCMD_SLAVE_DATA:
                RequestSlaveData();
                break;
        }
    }
}

void HandleCommand(void) {
    if(RXB1DLCbits.DLC == 3 && RXB1D0 == CANCMD_SLAVE_SET) {                    
        I2C1CNT = 1;
        I2C1ADB1 = RXB1D1;
        I2C1TXB = RXB1D2;
        I2C1CON0bits.S = 1;
    }
}

void InitializeCan(char CanAddrHigh, char CanAddrLow) {
    CANADRH = CanAddrHigh;
    CANADRL = CanAddrLow;
    
    CANRXPPS = 0x0B;   //RB3->ECAN:CANRX;  
    RB2PPS = 0x33;   //RB2->ECAN:CANTX0;
    
    CANCON = 0x80;
    while (0x80 != (CANSTAT & 0xE0)); // wait until ECAN is in config mode
    
    //Set CAN Address filters        
    RXF0SIDH = 0xFF;
    RXF0SIDL = 0xE0;        
    RXF1SIDH = 0xFF;
    RXF1SIDL = 0xE0;
    RXM0SIDH = 0b11100000;
    RXM0SIDL = 0x00;
    
    RXF2SIDH = CANADRH;
    RXF2SIDL = CANADRL & 0b11100000;
    RXF3SIDH = CANADRH;
    RXF3SIDL = CANADRL & 0b11100000;
    RXF4SIDH = CANADRH;
    RXF4SIDL = CANADRL & 0b11100000;
    RXF5SIDH = CANADRH;
    RXF5SIDL = CANADRL & 0b11100000;
    RXM1SIDH = 0xFF;
    RXM1SIDL = 0xE0;
    
    ECANCON = 0x00;
    CIOCON = 0x00;
    
    BRGCON1 = 0x01;
    BRGCON2 = 0x98;
    BRGCON3 = 0x81;
    
    CANCON = 0x00;
    while (0x00 != (CANSTAT & 0xE0)); // wait until ECAN is in Normal mode     
    
    PIR5bits.RXB0IF = 0;
    PIE5bits.RXB0IE = 1;    
    PIR5bits.RXB1IF = 0;
    PIE5bits.RXB1IE = 1;
}

void ProcessCanMessage(void) {
    // Broadcast Buffer
    if(RXB0IF) {
        if(RXB0CONbits.RXFUL && RXB0DLCbits.DLC == 1 && RXB0D0 == (CAN_REQUEST_MASK | CANCMD_DISCOVER)) {
            SendCanFrameS(CANCMD_DISCOVER);
            RXB0CONbits.RXFUL = 0;
        }
        RXB0IF = 0;
    }
    // Targeted Buffer
    else if(RXB1IF) {
        if(RXB1CONbits.RXFUL) {
            if((RXB1D0 & CAN_REQUEST_MASK) != 0) {
                HandleRequest();
            }
            else {
                HandleCommand();
            }
            RXB1CONbits.RXFUL = 0;
        }
        RXB1IF = 0;
    }
}

void SendCanFrameS(char data) {
    char dataA[1];
    dataA[0] = data;
    SendCanFrame(dataA, 1);
}

void SendCanFrame(char data[], char length) {
    while(1) {
        if(!TXB0CONbits.TXREQ) {
            TXB0SIDH = CANADRH;
            TXB0SIDL = CANADRL;
            TXB0DLC = length;
            switch(length) {
                default:
                case 8:
                    TXB0D7 = data[7];                
                case 7:
                    TXB0D6 = data[6];                
                case 6:
                    TXB0D5 = data[5];                
                case 5:
                    TXB0D4 = data[4];                
                case 4:
                    TXB0D3 = data[3];                
                case 3:
                    TXB0D2 = data[2];                
                case 2:
                    TXB0D1 = data[1];                
                case 1:
                    TXB0D0 = data[0];
            }
            TXB0CONbits.TXREQ = 1;
            break;
        }
        else if(!TXB1CONbits.TXREQ) {
            TXB1SIDH = CANADRH;
            TXB1SIDL = CANADRL;
            TXB1DLC = 1;
            switch(length) {
                case 7:
                    TXB1D7 = data[7];                
                case 6:
                    TXB1D6 = data[6];                
                case 5:
                    TXB1D5 = data[5];                
                case 4:
                    TXB1D4 = data[4];                
                case 3:
                    TXB1D3 = data[3];                
                case 2:
                    TXB1D2 = data[2];                
                case 1:
                    TXB1D1 = data[1];                
                case 0:
                    TXB1D0 = data[0];
            }     
            TXB1CONbits.TXREQ = 1;      
            break;
        }
        else if(!TXB2CONbits.TXREQ) {
            TXB2SIDH = CANADRH;
            TXB2SIDL = CANADRL;
            TXB2DLC = 1;
            switch(length) {
                case 7:
                    TXB2D7 = data[7];                
                case 6:
                    TXB2D6 = data[6];                
                case 5:
                    TXB2D5 = data[5];                
                case 4:
                    TXB2D4 = data[4];                
                case 3:
                    TXB2D3 = data[3];                
                case 2:
                    TXB2D2 = data[2];                
                case 1:
                    TXB2D1 = data[1];                
                case 0:
                    TXB2D0 = data[0];
            }   
            TXB2CONbits.TXREQ = 1;         
            break;
        }
    }
}
