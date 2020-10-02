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

#define MUX_SIGNAL_BASEADRESS 0b10100000
#define MUX_SIGNAL_ADRESSMASK 0b00001110

#include <xc.h>
#include <pic16f1503.h>

// Delay function according to https://www.microchip.com/forums/m791186.aspx
void delay_ms(unsigned int milliseconds)
{
   while(milliseconds > 0)
   {
      milliseconds--;
       __delay_ms(1);
   }
}

void initialize() {
    OSCCON = 0b01110000;
    
    TRISA = 0b00000111;
    TRISC = 0b00000011;
    
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

void setOutput(unsigned char state, unsigned char pinMove) {
    if(pinMove < 2) {
        if(state == 1)
            PORTA = PORTA | (1 << (pinMove+3));
        else
            PORTA = PORTA & ~(1 << (pinMove+3));            
    }
    else {
        if(state == 1)
            PORTC = PORTC | (1 << (pinMove));
        else
            PORTC = PORTC & ~(1 << (pinMove));  
    }
}

void main(void) {
    
    initialize();
    
    while(1);
}

void __interrupt() I2C_Slave() {
    unsigned char buf, pinMove, state, timeFactor;
    
    if(SSP1IF == 1) {
        SSP1IF = 0;
        
        if(SSP1CON1bits.WCOL || SSP1CON1bits.SSPOV ) {
            buf = SSPBUF;
            SSP1CON1bits.WCOL = 0;
            SSP1CON1bits.SSPOV = 0;       
        }        
        
        if (SSP1STATbits.R_nW) {
            SSPBUF = 0x00;                
        } else if (SSP1STATbits.D_nA) {
            buf = SSPBUF;
            
            pinMove = (buf & 0b11100000) >> 5;
            state = (buf & 0b00010000) >> 4; 
            timeFactor = buf & 0b00001111;
            
            // No PORT is completely usable, so pin 0+1 are on PORTA4/5, while pins 2-5 are on PORTC2++
            
            setOutput(state, pinMove);
            
            if(timeFactor > 0) {
                delay_ms(timeFactor*140);
                setOutput(~state, pinMove);
            }
        } else {
            buf = SSPBUF;
        }
        
        SSPCON1bits.CKP = 1;
    }
    
    return;
}