/*
 * gpio.h
 *
 *  Created on: 05/11/2018
 *      Author: azpei
 */

#ifndef GPIO_H_
#define GPIO_H_

#include "S32K144.h"
#include "Cpu.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "stdbool.h"
#include "definitions.h"

void GPIO_Clock_Set_Up(char_t port);

void GPIO_Init_As_Input(uint8_t input);

uint8_t GPIO_Read_Input(uint8_t input);

uint8_t GPIO_Read_Input_Interrupt(uint8_t input);

void GPIO_Init_As_Output(uint8_t output);

void GPIO_Set_Off_Output(uint8_t output);

void GPIO_Set_On_Output(uint8_t output);

void GPIO_Set_On_Ouput_Mask(uint8_t output, uint32_t mask);

void GPIO_Toggle(uint8_t output);

void GPIO_Clear_Interrupt(uint8_t input);

void GPIO_Enable_Port_Interrupt(char_t port);

uint8_t GPIO_Get_Port_Pin(uint8_t value);

char_t GPIO_Get_Port_Char(uint8_t value);

void GPIO_Clear_Port_Outputs(char_t port);

#endif /* GPIO_H_ */
