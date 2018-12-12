/*
 * LCD_DOS.c
 *
 *  Created on: 7 dic. 2018
 *      Author: migue
 */

#include "LCD_DOS.h"
/* local function to generate some delay */
void delay(int cnt)
{
    int i;
    for(i=0;i<cnt;i++);
}


/* Function send the a nibble on the Data bus (LCD_D4 to LCD_D7) */
void sendNibble(char nibble)
{
    LcdDataBusPort &=~(LCD_dataBusMask);                 // Clear previous data
    LcdDataBusPort |= (((nibble >>0x00) & 0x01) << LCD_D4);
    LcdDataBusPort |= (((nibble >>0x01) & 0x01) << LCD_D5);
    LcdDataBusPort |= (((nibble >>0x02) & 0x01) << LCD_D6);
    LcdDataBusPort |= (((nibble >>0x03) & 0x01) << LCD_D7);
}


/* Function to send the command to LCD.
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void Lcd_CmdWrite(char cmd)
{

    sendNibble((cmd >> 0x04) & 0x0F);  //Send higher nibble
    LcdControlBusPort &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LcdControlBusPort &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LcdControlBusPort |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    delay(1000);
    LcdControlBusPort &= ~(1<<LCD_EN);

    delay(10000);

    sendNibble(cmd & 0x0F);            //Send Lower nibble
    LcdControlBusPort &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LcdControlBusPort &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LcdControlBusPort |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    delay(1000);
    LcdControlBusPort &= ~(1<<LCD_EN);

    delay(10000);
}



void Lcd_DataWrite(char dat)
{
    sendNibble((dat >> 0x04) & 0x0F);  //Send higher nibble
    LcdControlBusPort |= (1<<LCD_RS);  // Send HIGH pulse on RS pin for selecting data register
    LcdControlBusPort &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LcdControlBusPort |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    delay(1000);
    LcdControlBusPort &= ~(1<<LCD_EN);

    delay(10000);

    sendNibble(dat & 0x0F);            //Send Lower nibble
    LcdControlBusPort |= (1<<LCD_RS);  // Send HIGH pulse on RS pin for selecting data register
    LcdControlBusPort &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LcdControlBusPort |= (1<<LCD_EN);  // Generate a High-to-low pulse on EN pin
    delay(1000);
    LcdControlBusPort &= ~(1<<LCD_EN);

    delay(10000);
}

void LPIT0_Ch0_IRQHandler (uint32_t MILIS)
  {
	PCC->PCCn[PCC_LPIT_INDEX] = PCC_PCCn_PCS(6); /*Clock Src = 6 (SPLL2_DIV_CLK)*/
	PCC->PCCn[PCC_LPIT_INDEX] |=PCC_PCCn_CGC_MASK; /*Enable clk to LPIT0 regs*/
	LPIT0->MCR=0x00000001; /* Enables the module*/
	LPIT0->MIER =0x0000001; /* Enables the Interrupt for LPIT0*/
	LPIT0->TMR[0].TVAL = MILIS*40000; /*Channel 0 Timeout period: 40 M clocks*/
	LPIT0->TMR[0].TCTRL = 0x00000001; /*T_EN=1  : Timer channel is enabled*/
	while(0 == (LPIT0->MSR & LPIT_MSR_TIF0_MASK)); /*Waits until the flag of LPIT is asserted*/
	LPIT0->MSR |= LPIT_MSR_TIF0_MASK; /* Clears the LPIT0 interrupt Flag*/
	LPIT0->TMR[0].TCTRL = 0x00000000;/*T_EN=0  : Timer channel is disabled*/
  }

// LCD_NumberWrite FUNCTION to display numbers in LCD DISPLAY
void Lcd_NumberWrite(int num)
{
	int c,d,u=0;
	if(num/100>=1)
	{

		c=num/100;
		d=(num/10)-(c*10);
		u=num-(c*100)-(d*10);
		Lcd_DataWrite(48+c);
		Lcd_DataWrite(48+d);
		Lcd_DataWrite(48+u);

	}
	else if(num/10>=1)
	{
		d=(num/10);
		u=num-(d*10);
		Lcd_DataWrite(48+d);
		Lcd_DataWrite(48+u);


	}
	else if(num>=0 && num<=9)
	{
		u=num;
		Lcd_DataWrite(48+u);
	}
	else
	{
		Lcd_DataWrite('valor no valido');
	}

}
// PINSEL_LCD FUNCTION TO INITAILIZE PINS FOR LCD
void pinsel_lcd(void)
  {
  	PCC-> PCCn[PCC_PORTE_INDEX] = PCC_PCCn_CGC_MASK; /*Enable clock to PORT C*/
  	PCC-> PCCn[PCC_PORTD_INDEX] = PCC_PCCn_CGC_MASK; /*Enable clock to PORT D*/


  	PTD->PDDR |= 1<<PTD3;        /*Port D0: Data Direction= output*/
  	PORTD->PCR[PTD3] = GPIO_ACTIVE_MASK; /*Port D0: MUX = GPIO*/

  	PTD->PDDR |= 1<<PTD5;       /*Port D15: Data Direction= output*/
  	PORTD->PCR[PTD5] = GPIO_ACTIVE_MASK;/*Port D15: MUX = GPIO*/

  	PTD->PDDR |= 1<<PTD10;       /*Port D16: Data Direction= output*/
  	PORTD->PCR[PTD10] = GPIO_ACTIVE_MASK;/*Port D16: MUX = GPIO*/

  	PTD->PDDR |= 1<<PTD11;       /*Port D15: Data Direction= output*/
  	PORTD->PCR[PTD11] = GPIO_ACTIVE_MASK;/*Port D15: MUX = GPIO*/

  	PTE->PDDR |= 1<<PTE14;       /*Port D15: Data Direction= output*/
  	PORTE->PCR[PTE14] = GPIO_ACTIVE_MASK;/*Port D15: MUX = GPIO*/

  	PTE->PDDR |= 1<<PTE15;       /*Port D15: Data Direction= output*/
  	PORTE->PCR[PTE15] = GPIO_ACTIVE_MASK;/*Port D15: MUX = GPIO*/

  	PTE->PDDR |= 1<<PTE16;       /*Port D15: Data Direction= output*/
  	PORTE->PCR[PTE16] = GPIO_ACTIVE_MASK;/*Port D15: MUX = GPIO*/
}
