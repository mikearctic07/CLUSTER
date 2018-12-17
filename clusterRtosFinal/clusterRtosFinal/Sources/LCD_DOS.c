/*
 * LCD_DOS.c
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#include <LCD_DOS.h>
/* local function to generate some LCD_Delay */
void LCD_Delay_Ms (uint32_t msTimerDuration)
{
  PCC->PCCn[PCC_LPIT_INDEX] = PCC_PCCn_PCS(6); /* Clock Src = 6 (SPLL2_DIV2_CLK)*/
  PCC->PCCn[PCC_LPIT_INDEX] |= PCC_PCCn_CGC_MASK; /* Enable clk to LPIT0 regs */
  LPIT0->MCR = 0x00000001; /* DBG_EN-0: Timer chans stop in Debug mode */
  LPIT0->MIER = 0x00000001; /*Timer Interrupt Enabled for Chan 0 */
  LPIT0->TMR[0].TVAL = msTimerDuration*40000; /* Timer period */
  LPIT0->TMR[0].TCTRL = 0x00000001; /* Timer enable */
  while(0 == (LPIT0->MSR & LPIT_MSR_TIF0_MASK));
  LPIT0->MSR |= LPIT_MSR_TIF0_MASK;
  LPIT0->TMR[0].TCTRL = 0x00000000; /* Timer disable */
}

/* Function send the a nibble on the Data bus (LCD_D4 to LCD_D7) */
void LCD_Send_Nibble(uint8_t nibble)
{
    LCD_DATA_BUS_PORT &= ~(LCD_DATA_BUS_MASK);                 // Clear previous data
    LCD_DATA_BUS_PORT |= (((nibble >> 0x00) & 0x01) << LCD_D4);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x01) & 0x01) << LCD_D5);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x02) & 0x01) << LCD_D6);
    LCD_DATA_BUS_PORT |= (((nibble >> 0x03) & 0x01) << LCD_D7);
}

void LCD_Init()
{
    LCD_Command_Write(0x33);

    LCD_Command_Write(0x32);

    LCD_Command_Write(0x02);

    LCD_Command_Write(0x28);

    LCD_Command_Write(0x0E);

    LCD_Command_Write(0x01);

    LCD_Command_Write(0x06);

    LCD_Command_Write(0x80);
}

/* Function to send the command to LCD.
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void LCD_Command_Write(uint8_t cmd)
{
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation

    LCD_Send_Nibble((uint8_t)((cmd >> 0x04) & 0x0F));  //Send higher nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay_Ms(2);

    LCD_Send_Nibble((uint8_t)(cmd & 0x0F));            //Send Lower nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Delay_Ms(2);

}

void LCD_Data_Write(uint8_t dat)
{
    LCD_CONTROL_BUS_PORT |= (1<<LCD_RS);  // Send HIGH pulse on RS pin for selecting data register
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation

    LCD_Send_Nibble((uint8_t)((dat >> 0x04) & 0x0F));  //Send higher nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);

    LCD_Send_Nibble((uint8_t)(dat & 0x0F));            //Send Lower nibble
    LCD_CONTROL_BUS_PORT |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    LCD_CONTROL_BUS_PORT &= ~(1<<LCD_EN);
}
