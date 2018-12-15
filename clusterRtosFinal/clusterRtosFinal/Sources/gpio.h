/*
 * gpio.h
 *
 *  Created on: 05/11/2018
 *      Author: azpei
 */

#ifndef GPIO_H_
#define GPIO_H_

#include <stdint.h>
#include <definitions.h>
#include "S32K144.h"
typedef char char_t;

void GPIO_Clock_Set_Up(uint8_t portIndex);

void GPIO_Init_As_Input(int input);

int GPIO_Read_Input(int input);

int GPIO_Read_Input_Interrupt(int input);

void GPIO_Init_As_Output(int output);

void GPIO_Set_Off_Output(int output);

void GPIO_Set_On_Output(int output);

void GPIO_Set_On_Ouput_Mask(int output, int mask);

void GPIO_Toggle(int output);

void GPIO_Clear_Interrupt(int input);

void GPIO_Enable_Port_Interrupt(char_t port);

int GPIO_Get_Port_Pin(int value);

char GPIO_Get_Port_Char(int value);

void GPIO_Clear_Port_Outputs(char port);

#endif /* GPIO_H_ */
