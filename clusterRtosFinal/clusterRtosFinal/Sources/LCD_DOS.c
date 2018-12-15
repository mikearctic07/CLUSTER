/*
 * LCD_DOS.c
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#include <LCD_DOS.h>
/* local function to generate some LCD_Delay */
void LCD_Delay(int cnt)
{
    int i;
    for(i=0;i<cnt;i++);
}


/* Function send the a nibble on the Data bus (LCD_D4 to LCD_D7) */
void LCD_Send_Nibble(char nibble)
{
    LCD_DATA_BUS_PORT &= ~(LCD_DATA_BUS_MASK);                 // Clear previous data
    LCD_DATA_BUS_PORT |= (((nibble >> 0x00) & 0x01) << LCD_D4);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x01) & 0x01) << LCD_D5);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x02) & 0x01) << LCD_D6);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x03) & 0x01) << LCD_D7);
}

void LCD_Init()
{
	LCD_DATA_BUS_DIRN_REG |= LCD_DATA_BUS_MASK;
	LCD_CTRL_BUS_DIRN_REG |= LCD_CTRL_BUS_MASK;

    LCD_Command_Write(0x02);

    LCD_Command_Write(0x28);

    LCD_Command_Write(0x0E);

    LCD_Command_Write(0x01);

    LCD_Command_Write(0x80);
}

/* Function to send the command to LCD.
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void LCD_Command_Write(char cmd)
{
    LCD_Send_Nibble((cmd >> 0x04) & 0x0F);  //Send higher nibble
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_Delay(1000);
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay(10000);

    LCD_Send_Nibble(cmd & 0x0F);            //Send Lower nibble
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_Delay(1000);
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay(10000);
}

void LCD_Data_Write(char dat)
{
    LCD_Send_Nibble((dat >> 0x04) & 0x0F);  //Send higher nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_RS);  // Send HIGH pulse on RS pin for selecting data register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_Delay(1000);
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay(10000);

    LCD_Send_Nibble(dat & 0x0F);            //Send Lower nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_RS);  // Send HIGH pulse on RS pin for selecting data register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_Delay(1000);
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay(10000);
}
