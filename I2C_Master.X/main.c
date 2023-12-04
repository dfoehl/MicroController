/*
 * File:   main.c
 * Author: dfoehl
 *
 * Created on 23. April 2020, 00:06
 */

// CONFIG1L
#pragma config FEXTOSC = OFF     // External Oscillator Selection (XT (crystal oscillator) above 100 kHz, below 8 MHz; PFM set to medium power)
#pragma config RSTOSC = HFINTOSC_1MHZ// Reset Oscillator Selection (HFINTOSC with HFFRQ = 4 MHz and CDIV = 4:1)

// CONFIG1H
#pragma config CLKOUTEN = OFF   // Clock out Enable bit (CLKOUT function is disabled)
#pragma config PR1WAY = ON      // PRLOCKED One-Way Set Enable bit (PRLOCK bit can be cleared and set only once)
#pragma config CSWEN = ON       // Clock Switch Enable bit (Writing to NOSC and NDIV is allowed)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)

// CONFIG2L
#pragma config MCLRE = EXTMCLR  // MCLR Enable bit (If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR )
#pragma config PWRTS = PWRT_OFF // Power-up timer selection bits (PWRT is disabled)
#pragma config MVECEN = OFF     // Multi-vector enable bit (Interrupt contoller does not use vector table to prioritze interrupts)
#pragma config IVT1WAY = ON     // IVTLOCK bit One-way set enable bit (IVTLOCK bit can be cleared and set only once)
#pragma config LPBOREN = OFF    // Low Power BOR Enable bit (ULPBOR disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled , SBOREN bit is ignored)

// CONFIG2H
#pragma config BORV = VBOR_2P45 // Brown-out Reset Voltage Selection bits (Brown-out Reset Voltage (VBOR) set to 2.45V)
#pragma config ZCD = OFF        // ZCD Disable bit (ZCD disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON)
#pragma config PPS1WAY = ON     // PPSLOCK bit One-Way Set Enable bit (PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle)
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config DEBUG = OFF      // Debugger Enable bit (Background debugger disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Extended Instruction Set and Indexed Addressing Mode disabled)

// CONFIG3L
#pragma config WDTCPS = WDTCPS_31// WDT Period selection bits (Divider ratio 1:65536; software control of WDTPS)
#pragma config WDTE = ON       // WDT operating mode (WDT Disabled; SWDTEN is ignored)

// CONFIG3H
#pragma config WDTCWS = WDTCWS_7// WDT Window Select bits (window always open (100%); software control; keyed access not required)
#pragma config WDTCCS = SC      // WDT input clock selector (Software Control)

// CONFIG4L
#pragma config BBSIZE = BBSIZE_512// Boot Block Size selection bits (Boot Block size is 512 words)
#pragma config BBEN = OFF       // Boot Block enable bit (Boot block disabled)
#pragma config SAFEN = OFF      // Storage Area Flash enable bit (SAF disabled)
#pragma config WRTAPP = OFF     // Application Block write protection bit (Application Block not write protected)

// CONFIG4H
#pragma config WRTB = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-30000Bh) not write-protected)
#pragma config WRTC = OFF       // Boot Block Write Protection bit (Boot Block (000000-0007FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)
#pragma config WRTSAF = OFF     // SAF Write protection bit (SAF not Write Protected)
#pragma config LVP = ON         // Low Voltage Programming Enable bit (Low voltage programming enabled. MCLR/VPP pin function is MCLR. MCLRE configuration bit is ignored)

// CONFIG5L
#pragma config CP = OFF         // PFM and Data EEPROM Code Protection bit (PFM and Data EEPROM code protection disabled)

// CONFIG5H

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define _XTAL_FREQ 8000000

#include <pic18f26k83.h>
#include <xc.h>
#include "CanModule.h"

enum {
    HP0    = 0x00,
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

#define CANADRH_BASE 0b01000000
#define CANADRH_MASK 0b00011111
#define CANADRL_BASE 0b00000000
#define CANADRL_MASK 0b11100000

void initialize() {    
    
    // NOSC HFINTOSC; NDIV 1; 
    OSCCON1 = 0x60;
    // HFFRQ 8_MHz; 
    OSCFRQ = 0x03;
    
    /**
    LATx registers
    */
    LATA = 0x00;
    LATB = 0x00;
    LATC = 0x00;

    /**
    TRISx registers
    */
    TRISA = 0xFF;
    TRISB = 0b10111011;
    TRISC = 0xE7;

    /**
    ANSELx registers
    */
    ANSELC = 0;
    ANSELB = 0;
    ANSELA = 0;

    /**
    WPUx registers
    */
    WPUE = 0x00;
    WPUB = 0x00;
    WPUA = 0b11111111;
    WPUC = 0b00011000;

    /**
    ODx registers
    */
    ODCONA = 0x00;
    ODCONB = 0x00;
    ODCONC = 0x18;

    /**
    SLRCONx registers
    */
    SLRCONA = 0xFF;
    SLRCONB = 0xFF;
    SLRCONC = 0xFF;

    /**
    INLVLx registers
    */
    INLVLA = 0xFF;
    INLVLB = 0xFF;
    INLVLC = 0xFF;
    INLVLE = 0x08;
    
    // I2C INIT
    I2C1SDAPPS = 0x13;   //RC3->I2C1:SDA1;    
    RC3PPS = 0x22;   //RC3->I2C1:SDA1;       
    RC4PPS = 0x21;   //RC4->I2C1:SCL1;      
    I2C1SCLPPS = 0x14;   //RC4->I2C1:SCL1;         
    RC3I2C = 0x01;
    RC4I2C = 0x01;    
    I2C1CON1 = 0b01000000;
    I2C1CON2 = 0b00000001;
    I2C1CLK = 0x03;
    I2C1CNT = 0xFF;
    //enable I2C
    I2C1CON0 = 0b10000100;
    
    //CAN INIT 
    
    //Read CAN ADR Inputs
    char canAddrH = CANADRH_BASE | (PORTA>>3 & CANADRH_MASK) ;
    char canAddrL = (PORTA<<5 & CANADRL_MASK);
    
    InitializeCan(canAddrH, canAddrL);
    
    //Interrupt INIT
    
    INTCON0bits.IPEN = 0;
    GIE = 1;
    I2C1IE = 1;
    I2C1EIE = 1;
    I2C1TXIE = 1;
    PIE5bits.ERRIE = 1;
    
}

void main(void) {
    
    initialize();
    
    while(1) {
        CLRWDT();
    }
    
    return;
}

void __interrupt() IRQ() {
    if (RXB0IF ||RXB1IF) {
        ProcessCanMessage();
    }
    // Error IR
    else if (ERRIF) {
        ERRIF = 0;
    }
}