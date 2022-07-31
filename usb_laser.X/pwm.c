/*
 * File:   pwm.c
 * Author: Oded Tagar
 *
 * Created on July 31, 2022, 12:59 PM
 */


#include <xc.h>
#include <pwm.h>

long freq;

int PWM_Max_Duty()
{
  return(_XTAL_FREQ/(freq*TMR2PRESCALE));
}

void PWM1_Init(long fre)
{
  PR2 = (_XTAL_FREQ/(fre*4*TMR2PRESCALE)) - 1;
  freq = fre;
}

void PWM1_Duty(unsigned int duty)
{
  if(duty<1024)
  {
    duty = ((float)duty/1023)*PWM_Max_Duty();
    CCP1CONbits.DC1B0 = duty & 1;
    CCP1CONbits.DC1B1 = duty & 2;
    CCPR1L = duty>>2;
  }
}

void PWM1_Start()
{
  CCP1M3 = 1;
  CCP1M2 = 1;
  #if TMR2PRESCALAR == 1
    T2CKPS0 = 0;
    T2CKPS1 = 0;
  #elif TMR2PRESCALAR == 4
    T2CKPS0 = 1;
    T2CKPS1 = 0;
  #elif TMR2PRESCALAR == 16
    T2CKPS0 = 1;
    T2CKPS1 = 1;
  #endif
  TMR2ON = 1;
  TRISC2 = 0;
}

void PWM1_Stop()
{
  CCP1M3 = 0;
  CCP1M2 = 0;
}


