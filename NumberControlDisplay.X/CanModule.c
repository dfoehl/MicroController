/* 
 * File:   CanModule.h
 * Author: dfoehl
 *
 * Created on 12. Juni 2020, 00:37
 */

#include <pic18f26k83.h>

#include <stdbool.h>
#include <stdint.h>
#include "CanModule.h"
#include "KeyDefinition.h"

char CANADRH = 0x00;
char CANADRL = 0x00;
extern uint8_t value[6];

void resetValue(void) {
    for(int i = 0; i < 6; i++) {
        value[i] = 12;
    }
}

void I2CScan() {
    
    char data[2];

    data[0] = 0xFF;
    data[1] = 0x01;
    SendCanFrame(data, 2);
    
    data[0] = 0xFF;
    data[1] = 0xFF;
    SendCanFrame(data, 2);
}

void HandleRequest() {
    switch(RXB1DLCbits.DLC) {
        case 1:
            I2CScan();
            break;
    }
}

void HandleCommand() {
    if(RXB1DLCbits.DLC == 8 && RXB1D0 == 0xEE && RXB1D1 == 0x01) { 
        value[0] = RXB1D2;
        value[1] = RXB1D3;
        value[2] = RXB1D4;
        value[3] = RXB1D5;
        value[4] = RXB1D6;
        value[5] = RXB1D7;
    }
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
        if(RXB0CONbits.RXFUL && RXB0DLCbits.DLC == 1 && RXB0D0 == 0xFF) {
            SendCanFrameS(0xFF);
            RXB0CONbits.RXFUL = 0;
        }
        RXB0IF = 0;
    }
    // Targeted Buffer
    else if(RXB1IF) {
        if(RXB1CONbits.RXFUL) {
            if(RXB1CONbits.RXRTRRO) {
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
