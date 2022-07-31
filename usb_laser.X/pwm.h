

/* 
 * File: pwm.h   
 * Author: Oded Tagar
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef PWM_H
#define	PWM_H

// Includes

#define _XTAL_FREQ 20000000
#define TMR2PRESCALE 4

int PWM_Max_Duty();
void PWM1_Init(long fre);
void PWM1_Duty(unsigned int duty);
void PWM1_Start();
void PWM1_Stop();

#endif	/* XC_HEADER_TEMPLATE_H */

