/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.8
        Device            :  PIC16F1503
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.36 and above
        MPLAB 	          :  MPLAB X 6.00	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set Taster aliases
#define Taster_TRIS                 TRISAbits.TRISA0
#define Taster_LAT                  LATAbits.LATA0
#define Taster_PORT                 PORTAbits.RA0
#define Taster_WPU                  WPUAbits.WPUA0
#define Taster_ANS                  ANSELAbits.ANSA0
#define Taster_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define Taster_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define Taster_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define Taster_GetValue()           PORTAbits.RA0
#define Taster_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define Taster_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define Taster_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define Taster_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define Taster_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define Taster_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set Sound aliases
#define Sound_TRIS                 TRISAbits.TRISA1
#define Sound_LAT                  LATAbits.LATA1
#define Sound_PORT                 PORTAbits.RA1
#define Sound_WPU                  WPUAbits.WPUA1
#define Sound_ANS                  ANSELAbits.ANSA1
#define Sound_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define Sound_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define Sound_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define Sound_GetValue()           PORTAbits.RA1
#define Sound_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define Sound_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define Sound_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define Sound_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define Sound_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define Sound_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set Baum aliases
#define Baum_TRIS                 TRISAbits.TRISA2
#define Baum_LAT                  LATAbits.LATA2
#define Baum_PORT                 PORTAbits.RA2
#define Baum_WPU                  WPUAbits.WPUA2
#define Baum_ANS                  ANSELAbits.ANSA2
#define Baum_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define Baum_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define Baum_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define Baum_GetValue()           PORTAbits.RA2
#define Baum_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define Baum_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define Baum_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define Baum_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define Baum_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define Baum_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/