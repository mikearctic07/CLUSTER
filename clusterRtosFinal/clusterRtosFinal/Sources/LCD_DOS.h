/*
 * LCD_DOS.h
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#ifndef LCD_DOS_H_
#define LCD_DOS_H_

#include "S32K144.h"
#include "Cpu.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "stdbool.h"
#include "definitions.h"

void LCD_Delay_Ms (uint32_t msTimerDuration);

void LCD_Send_Nibble(uint8_t nibble);

void LCD_Init();

void LCD_Command_Write(uint8_t cmd);

void LCD_Data_Write(uint8_t dat);

#endif /* LCD_DOS_H_ */
