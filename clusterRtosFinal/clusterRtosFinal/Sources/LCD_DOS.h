/*
 * LCD_DOS.h
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#include "cluster.h"

#ifndef LCD_DOS_H_
#define LCD_DOS_H_

void delay(int cnt);

void sendNibble(char nibble);

void Lcd_CmdWrite(char cmd);

void Lcd_DataWrite(char dat);

#endif /* LCD_DOS_H_ */
