/*
 * gpio.c
 *
 *  Created on: 05/11/2018
 *      Author: azpei
 */

#include <gpio.h>

void GPIO_Clock_Set_Up(char_t port)
{
  switch (port)
  {
    case 'A':
      PCC-> PCCn[PCC_PORTA_INDEX] = PCC_PCCn_CGC_MASK;
      break;
    case 'B':
      PCC-> PCCn[PCC_PORTB_INDEX] = PCC_PCCn_CGC_MASK;
      break;
    case 'C':
      PCC-> PCCn[PCC_PORTC_INDEX] = PCC_PCCn_CGC_MASK;
      break;
    case 'D':
      PCC-> PCCn[PCC_PORTD_INDEX] = PCC_PCCn_CGC_MASK;
      break;
    case 'E':
      PCC-> PCCn[PCC_PORTE_INDEX] = PCC_PCCn_CGC_MASK;
     break;
    default:
      break;
  }

}

void GPIO_Init_As_Input(uint8_t input)
{
  char_t port = GPIO_Get_Port_Char(input);
  uint8_t pinNumber = GPIO_Get_Port_Pin(input);
  uint32_t pinAsGpioInterrputEnable = 0x00098110;
  switch (port)
  {
    case 'A':
      PTA->PDDR &= ~(1<<pinNumber);
      PORTA->PCR[pinNumber] = pinAsGpioInterrputEnable;
      break;
    case 'B':
      PTB->PDDR &= ~(1<<pinNumber);
      PORTB->PCR[pinNumber] = pinAsGpioInterrputEnable;
      break;
    case 'C':
      PTC->PDDR &= ~(1<<pinNumber);
      PORTC->PCR[pinNumber] = pinAsGpioInterrputEnable;
      break;
    case 'D':
      PTD->PDDR &= ~(1<<pinNumber);
      PORTD->PCR[pinNumber] = pinAsGpioInterrputEnable;
      break;
    case 'E':
      PTE->PDDR &= ~(1<<pinNumber);
      PORTE->PCR[pinNumber] = pinAsGpioInterrputEnable;
      break;
    default:
      break;
  }
}

uint8_t GPIO_Read_Input(uint8_t input)
{
  char_t port = GPIO_Get_Port_Char(input);
  uint8_t pinNumber = GPIO_Get_Port_Pin(input);
  uint8_t output = 0;
  switch (port)
  {
    case 'A':
      output = (PTA->PDIR & (1<<pinNumber))>>pinNumber;
      break;
    case 'B':
      output = (PTB->PDIR & (1<<pinNumber))>>pinNumber;
      break;
    case 'C':
      output = (PTC->PDIR & (1<<pinNumber))>>pinNumber;
      break;
    case 'D':
      output = (PTD->PDIR & (1<<pinNumber))>>pinNumber;
      break;
    case 'E':
      output = (PTE->PDIR & (1<<pinNumber))>>pinNumber;
      break;
    default:
      break;
  }
  return output;
}

uint8_t GPIO_Read_Input_Interrupt(uint8_t input)
{
  char_t port = GPIO_Get_Port_Char(input);
  uint8_t pinNumber = GPIO_Get_Port_Pin(input);
  uint8_t output = 0;
  switch (port)
  {
    case 'A':
      output = (PORTA->ISFR & (1<<pinNumber))>>pinNumber;
      break;
    case 'B':
      output = (PORTB->ISFR & (1<<pinNumber))>>pinNumber;
      break;
    case 'C':
      output = (PORTC->ISFR & (1<<pinNumber))>>pinNumber;
      break;
    case 'D':
      output = (PORTD->ISFR & (1<<pinNumber))>>pinNumber;
      break;
    case 'E':
      output = (PORTE->ISFR & (1<<pinNumber))>>pinNumber;
      break;
    default:
      break;
  }
  return output;
}

void GPIO_Init_As_Output(uint8_t output)
{
  char_t port = GPIO_Get_Port_Char(output);
  uint8_t pinNumber = GPIO_Get_Port_Pin(output);
  uint32_t pinAsGpio = 0x00000100;
  switch (port)
  {
    case 'A':
      PTA->PDDR |= 1<<pinNumber;
      PORTA->PCR[pinNumber] = pinAsGpio;
      break;
    case 'B':
      PTB->PDDR |= 1<<pinNumber;
      PORTB->PCR[pinNumber] = pinAsGpio;
      break;
    case 'C':
      PTC->PDDR |= 1<<pinNumber;
      PORTC->PCR[pinNumber] = pinAsGpio;
      break;
    case 'D':
      PTD->PDDR |= 1<<pinNumber;
      PORTD->PCR[pinNumber] = pinAsGpio;
      break;
    case 'E':
      PTE->PDDR |= 1<<pinNumber;
      PORTE->PCR[pinNumber] = pinAsGpio;
      break;
    default:
      break;
  }
}

void GPIO_Set_Off_Output(uint8_t output)
{
  char_t port = GPIO_Get_Port_Char(output);
  uint8_t pinNumber = GPIO_Get_Port_Pin(output);
  switch (port)
  {
	case 'A':
	  PTA->PCOR |= 1<<pinNumber;
	  break;
	case 'B':
	  PTB->PCOR |= 1<<pinNumber;
	  break;
	case 'C':
	  PTC->PCOR |= 1<<pinNumber;
	  break;
	case 'D':
	  PTD->PCOR |= 1<<pinNumber;
	  break;
	case 'E':
	  PTE->PCOR |= 1<<pinNumber;
	  break;
	default:
	  break;
  }
}

void GPIO_Set_On_Output(uint8_t output)
{
  char_t port = GPIO_Get_Port_Char(output);
  uint8_t pinNumber = GPIO_Get_Port_Pin(output);
  switch (port)
  {
	case 'A':
	  PTA->PSOR |= 1<<pinNumber;
	  break;
	case 'B':
	  PTB->PSOR |= 1<<pinNumber;
	  break;
	case 'C':
	  PTC->PSOR |= 1<<pinNumber;
	  break;
	case 'D':
	  PTD->PSOR |= 1<<pinNumber;
	  break;
	case 'E':
	  PTE->PSOR |= 1<<pinNumber;
	  break;
	default:
	  break;
  }
}

void GPIO_Set_On_Ouput_Mask(uint8_t output, uint32_t mask)
{
  char_t port = GPIO_Get_Port_Char(output);
  uint8_t pinNumber = GPIO_Get_Port_Pin(output);
  switch (port)
  {
	case 'A':
	  PTA->PDOR = (PTA->PDOR&(~(0xF<<pinNumber)))|(mask<<pinNumber);
	  break;
	case 'B':
	  PTB->PDOR = (PTB->PDOR&(~(0xF<<pinNumber)))|(mask<<pinNumber);
	  break;
	case 'C':
	  PTC->PDOR = (PTC->PDOR&(~(0xF<<pinNumber)))|(mask<<pinNumber);
	  break;
	case 'D':
	  PTD->PDOR = (PTD->PDOR&(~(0xF<<pinNumber)))|(mask<<pinNumber);
	  break;
	case 'E':
	  PTE->PDOR = (PTE->PDOR&(~(0xF<<pinNumber)))|(mask<<pinNumber);
	  break;
	default:
	  break;
  }
}


void GPIO_Toggle(uint8_t output)
{
  char_t port = GPIO_Get_Port_Char(output);
  uint8_t pinNumber = GPIO_Get_Port_Pin(output);
  switch (port)
  {
	case 'A':
	  PTA->PTOR |= 1<<pinNumber;
	  break;
	case 'B':
	  PTB->PTOR |= 1<<pinNumber;
	  break;
	case 'C':
	  PTC->PTOR |= 1<<pinNumber;
	  break;
	case 'D':
	  PTD->PTOR |= 1<<pinNumber;
	  break;
	case 'E':
	  PTE->PTOR |= 1<<pinNumber;
	  break;
	default:
	  break;
  }
}

void GPIO_Clear_Interrupt(uint8_t input)
{
  char_t port = GPIO_Get_Port_Char(input);
  uint8_t pinNumber = GPIO_Get_Port_Pin(input);
  uint32_t regValue = 0;
  switch (port)
  {
	case 'A':
	  /* DEV_ASSERT(pinNumber < PORT_PCR_COUNT); */
	  regValue = PORTA->PCR[pinNumber];
	  regValue &= ~(PORT_PCR_ISF_MASK);
	  regValue |= PORT_PCR_ISF(1);
	  PORTA->PCR[pinNumber] = regValue;
	  break;
	case 'B':
	  /* DEV_ASSERT(pinNumber < PORT_PCR_COUNT); */
	  regValue = PORTB->PCR[pinNumber];
	  regValue &= ~(PORT_PCR_ISF_MASK);
	  regValue |= PORT_PCR_ISF(1);
	  PORTB->PCR[pinNumber] = regValue;
	  break;
	case 'C':
	  /* DEV_ASSERT(pinNumber < PORT_PCR_COUNT); */
	  regValue = PORTC->PCR[pinNumber];
	  regValue &= ~(PORT_PCR_ISF_MASK);
	  regValue |= PORT_PCR_ISF(1);
	  PORTC->PCR[pinNumber] = regValue;
	  break;
	case 'D':
	  /* DEV_ASSERT(pinNumber < PORT_PCR_COUNT); */
	  regValue = PORTD->PCR[pinNumber];
	  regValue &= ~(PORT_PCR_ISF_MASK);
	  regValue |= PORT_PCR_ISF(1);
	  PORTD->PCR[pinNumber] = regValue;
	  break;
	case 'E':
	  /* DEV_ASSERT(pinNumber < PORT_PCR_COUNT); */
	  regValue = PORTE->PCR[pinNumber];
	  regValue &= ~(PORT_PCR_ISF_MASK);
	  regValue |= PORT_PCR_ISF(1);
	  PORTE->PCR[pinNumber] = regValue;
	  break;
	default:
	  break;
  }
}

void GPIO_Enable_Port_Interrupt(char_t port)
{
  switch (port)
  {
    case 'A':
      S32_NVIC->ISER[(uint32_t)(PORTA_IRQn) >> 5U] = (uint32_t)(1UL << ((uint32_t)(PORTA_IRQn) & (uint32_t)0x1FU));
      break;
    case 'B':
      S32_NVIC->ISER[(uint32_t)(PORTB_IRQn) >> 5U] = (uint32_t)(1UL << ((uint32_t)(PORTB_IRQn) & (uint32_t)0x1FU));
      break;
    case 'C':
      S32_NVIC->ISER[(uint32_t)(PORTC_IRQn) >> 5U] = (uint32_t)(1UL << ((uint32_t)(PORTC_IRQn) & (uint32_t)0x1FU));
      break;
    case 'D':
      S32_NVIC->ISER[(uint32_t)(PORTD_IRQn) >> 5U] = (uint32_t)(1UL << ((uint32_t)(PORTD_IRQn) & (uint32_t)0x1FU));
      break;
    case 'E':
      S32_NVIC->ISER[(uint32_t)(PORTE_IRQn) >> 5U] = (uint32_t)(1UL << ((uint32_t)(PORTE_IRQn) & (uint32_t)0x1FU));
      break;
    default:
      break;
  }
}

char_t GPIO_Get_Port_Char(uint8_t value)
{
   char portCharacter = 'Z';
  switch(value)
  {
    case 1:
      portCharacter = PRT_D;
      break;
    case 2:
      portCharacter = PRT_D;
      break;
    case 3:
      portCharacter = PRT_D;
      break;
    case 4:
      portCharacter = PRT_D;
      break;
    case 5:
      portCharacter = PRT_D;
      break;
    case 6:
      portCharacter = PRT_D;
      break;
    case 7:
      portCharacter = PRT_D;
      break;
    case 8:
      portCharacter = PRT_D;
      break;
    case 9:
      portCharacter = PRT_D;
      break;
    case 10:
      portCharacter = PRT_D;
      break;
    case 11:
      portCharacter = PRT_D;
      break;
    case 12:
      portCharacter = PRT_B;
      break;
    case 13:
      portCharacter = PRT_B;
      break;
    case 14:
      portCharacter = PRT_B;
      break;
    case 15:
      portCharacter = PRT_B;
      break;
    case 16:
      portCharacter = PRT_B;
      break;
    case 17:
      portCharacter = PRT_B;
      break;
    case 18:
      portCharacter = PRT_B;
      break;
    case 19:
      portCharacter = PRT_B;
      break;
    case 20:
      portCharacter = PRT_B;
      break;
    case 21:
      portCharacter = PRT_B;
      break;
    case 22:
      portCharacter = PRT_B;
      break;
    case 23:
      portCharacter = PRT_B;
      break;
    case 24:
      portCharacter = PRT_B;
      break;
    case 25:
      portCharacter = PRT_B;
      break;
    case 26:
      portCharacter = PRT_D;
      break;
    case 27:
      portCharacter = PRT_D;
      break;
    case 28:
      portCharacter = PRT_D;
      break;
    case 29:
      portCharacter = PRT_D;
      break;
    case 30:
      portCharacter = PRT_D;
      break;
    case 31:
      portCharacter = PRT_C;
      break;
    case 32:
      portCharacter = PRT_C;
      break;
    case 33:
      portCharacter = PRT_B;
      break;
    case 34:
      portCharacter = PRT_C;
      break;
    default:
      break;
  }
  return portCharacter;
}

uint8_t GPIO_Get_Port_Pin(uint8_t value)
{
  uint8_t portPin = 20;
  switch(value)
  {
    case 1:
      portPin = PIN_0;
      break;
    case 2:
      portPin = PIN_13;
      break;
    case 3:
      portPin = PIN_14;
      break;
    case 4:
      portPin = PIN_15;
      break;
    case 5:
      portPin = PIN_16;
      break;
    case 6:
      portPin = PIN_3;
      break;
    case 7:
      portPin = PIN_5;
      break;
    case 8:
      portPin = PIN_12;
      break;
    case 9:
      portPin = PIN_11;
      break;
    case 10:
      portPin = PIN_10;
      break;
    case 11:
      portPin = PIN_4;
      break;
    case 12:
      portPin = PIN_12;
      break;
    case 13:
      portPin = PIN_0;
      break;
    case 14:
      portPin = PIN_1;
      break;
    case 15:
      portPin = PIN_11;
      break;
    case 16:
      portPin = PIN_10;
      break;
    case 17:
      portPin = PIN_9;
      break;
    case 18:
      portPin = PIN_8;
      break;
    case 19:
      portPin = PIN_17;
      break;
    case 20:
      portPin = PIN_14;
      break;
    case 21:
      portPin = PIN_15;
      break;
    case 22:
      portPin = PIN_16;
      break;
    case 23:
      portPin = PIN_2;
      break;
    case 24:
      portPin = PIN_3;
      break;
    case 25:
      portPin = PIN_4;
      break;
    case 26:
      portPin = PIN_1;
      break;
    case 27:
      portPin = PIN_2;
      break;
    case 28:
      portPin = PIN_8;
      break;
    case 29:
      portPin = PIN_9;
      break;
    case 30:
      portPin = PIN_1;
      break;
    case 31:
      portPin = PIN_12;
      break;
    case 32:
      portPin = PIN_13;
      break;
   case 33:
      portPin = PIN_5;
      break;
    case 34:
      portPin = PIN_4;
      break;
    default:
      break;
  }
  return portPin;
}

void GPIO_Clear_Port_Outputs(char_t port)
{
  switch (port)
  {
    case 'A':
      PTA->PDOR = PTA->PDOR&(0x0);
      break;
    case 'B':
      PTB->PDOR = PTB->PDOR&(0x0);
      break;
    case 'C':
      PTC->PDOR = PTC->PDOR&(0x0);
      break;
    case 'D':
      PTD->PDOR = PTD->PDOR&(0x0);
      break;
    case 'E':
      PTE->PDOR = PTE->PDOR&(0x0);
      break;
    default:
      break;
  }
}
