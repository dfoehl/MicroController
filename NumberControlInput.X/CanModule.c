/* 
 * File:   CanModule.h
 * Author: dfoehl
 *
 * Created on 12. Juni 2020, 00:37
 */

#include <pic18f26k83.h>
#include <stdint.h>

#include "CanCommands.h"
#include "version.h"

#include "CanModule.h"

#define CAN_REQUEST_MASK (0x80u)
#define CAN_GET_CMD(value_) (value_ & ~CAN_REQUEST_MASK)

char CANADRH = 0x00;
char CANADRL = 0x00;

void I2CScan() {

    char data[2];
    
    data[0] = CANCMD_DISCOVER;
    data[1] = 0x01;
    SendCanFrame(data, 2);
            
    data[0] = CANCMD_DISCOVER;
    data[1] = 0xFF;
    SendCanFrame(data, 2);
}

void HandleRequest() {
    if(RXB1DLCbits.DLC > 0) {
        switch (CAN_GET_CMD(RXB1D0)) {
            case CANCMD_SLAVE:
                if(RXB1DLCbits.DLC == 2) I2CScan();
                break;
            case CANCMD_VERSION:
                if(RXB1DLCbits.DLC == 1) {
                    char data[] = { CANCMD_VERSION, VERSION };
                    SendCanFrame(data, 2);
                }
                break;
        }
    }
}

void HandleCommand() {
}

void CanSendKeys(uint32_t keyMask) {
    char data[5];
    data[0] = CANCMD_KEYBOARD_INPUT;
    data[1] = keyMask >> 24;
    data[2] = (keyMask >> 16) & 0xFF;
    data[3] = (keyMask >> 8) & 0xFF;
    data[4] = keyMask & 0xFF;
    SendCanFrame(data, 5);
}

void InitializeCan(char CanAddrHigh, char CanAddrLow) {
    CANADRH = CanAddrHigh;
    CANADRL = CanAddrLow;
    
    RB6PPS = 0x33;   //RB6->ECAN:CANTX0;    
    CANRXPPS = 0x0F;   //RB7->ECAN:CANRX;  
    
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
