/*
 * LCD_DOS.h
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */
#include "S32K144.h" /* include peripheral declarations S32K144 */
#include "s32_core_cm4.h"
#include "Cpu.h"

#ifndef LCD_DOS_H_
#define LCD_DOS_H_

#define LcdDataBusPort  PTD->PDOR
#define LcdControlBusPort   PTE->PDOR

#define LcdDataBusDirnReg   PTD->PDDR
#define LcdCtrlBusDirnReg   PTE->PDDR

#define LCD_D4     3
#define LCD_D5     5
#define LCD_D6     10
#define LCD_D7     11

#define LCD_RS     14
#define LCD_RW     15
#define LCD_EN     16

#define GPIO_ACTIVE_MASK 0x00000100 /*Port B, Mask for the desired outputs on port B*/
#define PTD3 3
#define PTD5 5
#define PTD10 10
#define PTD11 11

#define PTE14 14
#define PTE15 15
#define PTE16 16



/* Masks for configuring the DataBus and Control Bus direction */
#define LCD_ctrlBusMask   ((1<<LCD_RS)|(1<<LCD_RW)|(1<<LCD_EN))
#define LCD_dataBusMask   ((1<<LCD_D4)|(1<<LCD_D5)|(1<<LCD_D6)|(1<<LCD_D7))




#endif /* LCD_DOS_H_ */
