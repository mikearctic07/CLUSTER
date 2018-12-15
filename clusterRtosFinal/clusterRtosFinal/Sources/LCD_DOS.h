/*
 * LCD_DOS.h
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#include "cluster.h"

#ifndef LCD_DOS_H_
#define LCD_DOS_H_

void LCD_Delay(int cnt);

void LCD_Send_Nibble(char nibble);

void LCD_Init();

void LCD_Command_Write(char cmd);

void LCD_Data_Write(char dat);

#endif /* LCD_DOS_H_ */
