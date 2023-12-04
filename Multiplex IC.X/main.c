/*
 * File:   main.c
 * Author: dfoehl
 *
 * Created on 17. April 2020, 15:09
 * 
 * HP0/Sh0, HP1, HP2, HP0/Sh1
 * Vr0, Vr1, Vr2
 * 
 * 
 * RA0 = I2C Adress Bit 1
 * RA1 = I2C Adress Bit 2
 * RA2 = I2C Adress Bit 3
 * RA3 = MCLR
 * RA4 = 
 * RA5 = Track power pin
 * 
 * RC0 = I2C Clock / SCL
 * RC1 = I2C Data / SDA
 * RC2 = Signal Pin 1
 * RC3 = Signal Pin 2
 * RC4 = Signal Pin 3
 * RC5 = Signal Pin 4
 * 
 */

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection Bits (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LPBOR = OFF      // Low-Power Brown Out Reset (Low-Power BOR is disabled)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 8000000

#define MUX_SIGNAL_BASEADRESS 0b10000000
#define MUX_SIGNAL_ADRESSMASK 0b00001110

#include <xc.h>
#include <pic16f1503.h>

enum {
    HP0    = 0x00,
    HP00   = 0x01,
    HP00X  = 0x0E,
    HP0X   = 0x0F,
    HP1    = 0x11,
    HP1Vr0 = 0x33,
    HP1Vr1 = 0x55,
    HP1Vr2 = 0x77,
    HP2    = 0x88,
    HP2Vr0 = 0x99,
    HP2Vr1 = 0xBB,
    HP2Vr2 = 0xDD,
    HP0Sh1 = 0xEE,
    Sh1    = 0xFF
};

volatile char targetState = HP0;
char currentState = HP0;

void initialize() {
    OSCCON = 0b01110000;
    
    TRISA = 0b00000111;
    TRISC = 0b00111111;
    
    ANSELC = 0x00;
    ANSELA = 0x00;
    
    WPUA = 0x07;
    OPTION_REGbits.nWPUEN = 0;
    
    SSP1STAT = 0b10000000;
    SSP1CON1 = 0b00110110;
    SSP1CON2 = 0b00000001;
    SSP1ADD = MUX_SIGNAL_BASEADRESS | (MUX_SIGNAL_ADRESSMASK & (PORTA << 1)); 
    
    GIE = 1;          //Global interrupt enable
    PEIE = 1;         //Peripheral interrupt enable
    SSP1IF = 0;        //Clear interrupt flag
    SSP1IE = 1;        //Synchronous serial port interrupt enable
    
    return;
}

void SetLed(char highPin, char lowPin, _Bool active) {
    TRISC = 0b00111111;
    LATC = active ? 1 << (highPin+2) : 0;
    if (highPin > lowPin)
        TRISC = (unsigned) ~(((1 << (highPin-lowPin)) + 1) << (2 + lowPin));
    else        
        TRISC = (unsigned) ~(((1 << (lowPin-highPin)) + 1) << (2 + highPin));
}

void main(void) {
    
    initialize();
    
    char highPin[4], lowPin[4], pinActive[4];
    
    while(1) {
        
        for(int i = 0; i < 4; i++) {
            highPin[i] = 1;
            lowPin[i] = 0;
            pinActive[i] = 0;        
        }
        
        switch(targetState) {
            default:
            case HP0 :
            case HP0X:                
                highPin[0] = 0;
                lowPin[0] = 3;
                pinActive[0] = 1;
                break;
            case HP00 :
            case HP00X:
                highPin[0] = 0;
                lowPin[0] = 1;
                pinActive[0] = 1; 
                highPin[1] = 0;
                lowPin[1] = 3;
                pinActive[1] = 1;
                break;
            case HP1 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                break;
            case HP1Vr0 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 0;
                lowPin[1] = 2;
                pinActive[1] = 1;
                highPin[2] = 1;
                lowPin[2] = 2;
                pinActive[2] = 1;
                break;
            case HP1Vr1 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 2;
                lowPin[1] = 1;
                pinActive[1] = 1;
                highPin[2] = 2;
                lowPin[2] = 0;
                pinActive[2] = 1; 
                break;
            case HP1Vr2 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 2;
                lowPin[1] = 0;
                pinActive[1] = 1;
                highPin[2] = 1;
                lowPin[2] = 2;
                pinActive[2] = 1;
                break;
            case HP2 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 1;
                lowPin[1] = 0;
                pinActive[1] = 1;
                break;
            case HP2Vr0 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 1;
                lowPin[1] = 0;
                pinActive[1] = 1;
                highPin[2] = 0;
                lowPin[2] = 2;
                pinActive[2] = 1;
                highPin[3] = 1;
                lowPin[3] = 2;
                pinActive[3] = 1;
                break;
            case HP2Vr1 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 1;
                lowPin[1] = 0;
                pinActive[1] = 1;
                highPin[2] = 2;
                lowPin[2] = 0;
                pinActive[2] = 1;
                highPin[3] = 2;
                lowPin[3] = 1;
                pinActive[3] = 1;
                break;
            case HP2Vr2 :
                highPin[0] = 3;
                lowPin[0] = 0;
                pinActive[0] = 1; 
                highPin[1] = 1;
                lowPin[1] = 0;
                pinActive[1] = 1;
                highPin[2] = 2;
                lowPin[2] = 0;
                pinActive[2] = 1;
                highPin[3] = 1;
                lowPin[3] = 2;
                pinActive[3] = 1;
                break;
            case HP0Sh1 :
                highPin[0] = 1;
                lowPin[0] = 3;
                pinActive[0] = 1; 
                highPin[1] = 3;
                lowPin[1] = 1;
                pinActive[1] = 1;                
                highPin[2] = 0;
                lowPin[2] = 3;
                pinActive[2] = 1; 
                break;
            case Sh1 :
                highPin[0] = 1;
                lowPin[0] = 3;
                pinActive[0] = 1; 
                highPin[1] = 3;
                lowPin[1] = 1;
                pinActive[1] = 1;   
                break;
        }
        
        currentState = targetState;
        
        GIE = 0;
        
        for(int i = 0; i < 50; i++) {            
            for(int x = 0; x < 4; x++) {
                for(short j = 0; j < 10; j++) {  
                    if(j <= i/5) {
                        SetLed(highPin[x], lowPin[x], pinActive[x]);
                    }
                    else {
                        SetLed(0,1,0);
                    }
                }
            }
        }
        
        GIE = 1;
        
        switch(targetState) {
            case HP0  :
            case HP00 :
                LATAbits.LATA5 = 0;
                break;
            default:
                LATAbits.LATA5 = 1;                
                break;
        }
        
        while(currentState == targetState) {
            for(int i = 0; i < 4; i++) {
                SetLed(highPin[i], lowPin[i], pinActive[i]);
                __delay_ms(1);
            }
        }
        
        LATAbits.LATA5 = 0;
        
        GIE = 0;
        
        for(int i = 0; i < 50; i++) {            
            for(int x = 0; x < 4; x++) {
                for(short j = 0; j < 10; j++) {  
                    if(j <= i/5) {
                        SetLed(0,1,0);
                    }
                    else {
                        SetLed(highPin[x], lowPin[x], pinActive[x]);
                    }
                }
            }
        }
        
        GIE = 1;
        
        __delay_ms(300);
    }
}

void __interrupt() I2C_Slave() {
    unsigned char buf;
    
    if(SSP1IF == 1) {
        
        if(SSP1CON1bits.WCOL || SSP1CON1bits.SSPOV ) {
            buf = SSPBUF;
            SSP1CON1bits.WCOL = 0;
            SSP1CON1bits.SSPOV = 0;       
        }        
        
        if (SSP1STATbits.D_nA == 0) {
            buf = SSP1BUF;
        }
        else if (SSP1STATbits.R_nW == 1) {
            SSP1BUF = 0x00;
            latchedValue = 0;
        } else {
            targetState = SSP1BUF;
        }
        
        SSPCON1bits.CKP = 1;
        SSP1IF = 0;
    }
    
    return;
}