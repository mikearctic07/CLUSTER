/*
 * cluster.c
 *
 *  Created on: 06/12/2018
 *      Author: azpei
 */

#include <cluster.h>

void CLUSTER_Initialize(void)
{
  CLOCK_SOSC_Init_8MHz();
  CLOCK_SPLL_Init_160MHz();
  CLOCK_Setup_80MHz();
  CLOCK_Disable_Watchdog();

  GPIO_Clock_Set_Up(PRT_B);
  GPIO_Clock_Set_Up(PRT_C);
  GPIO_Clock_Set_Up(PRT_D);
  GPIO_Clock_Set_Up(PRT_E);

  PORTE->PCR[4] |= PORT_PCR_MUX(5); /* Port E4: MUX = ALT5, CAN0_RX */
  PORTE->PCR[5] |= PORT_PCR_MUX(5); /* Port E5: MUX = ALT5, CAN0_TX */

  GPIO_Init_As_Input(RESET_TRIP_ODOMETER);
  GPIO_Init_As_Input(IGNITION_BUTTON);
  GPIO_Init_As_Input(MILLES_OR_KILOMETERS);

  GPIO_Init_As_Output(VELOCIMETER_UNITS_D0);
  GPIO_Init_As_Output(VELOCIMETER_UNITS_D1);
  GPIO_Init_As_Output(VELOCIMETER_UNITS_D2);
  GPIO_Init_As_Output(VELOCIMETER_UNITS_D3);
  GPIO_Init_As_Output(VELOCIMETER_TENS_D0);
  GPIO_Init_As_Output(VELOCIMETER_TENS_D1);
  GPIO_Init_As_Output(VELOCIMETER_TENS_D2);
  GPIO_Init_As_Output(VELOCIMETER_TENS_D3);
  GPIO_Init_As_Output(VELOCIMETER_HUNDREDS_D0);
  GPIO_Init_As_Output(VELOCIMETER_HUNDREDS_D1);
  GPIO_Init_As_Output(VELOCIMETER_HUNDREDS_D2);
  GPIO_Init_As_Output(VELOCIMETER_HUNDREDS_D3);

  GPIO_Init_As_Output(INDICATOR_DOOR);
  GPIO_Init_As_Output(INDICATOR_SEAT_BELT);
  GPIO_Init_As_Output(INDICATOR_GAS);
  GPIO_Init_As_Output(INDICATOR_HIGH_BEAMS);
  GPIO_Init_As_Output(INDICATOR_BREAK);

  GPIO_Init_As_Output(GAS_TANK_LVL_0);
  GPIO_Init_As_Output(GAS_TANK_LVL_1);
  GPIO_Init_As_Output(GAS_TANK_LVL_2);
  GPIO_Init_As_Output(GAS_TANK_LVL_3);
  GPIO_Init_As_Output(GAS_TANK_LVL_4);

  GPIO_Init_As_Output(ODOMETER_LCD_RS);
  GPIO_Init_As_Output(ODOMETER_LCD_RW);
  GPIO_Init_As_Output(ODOMETER_LCD_EN);
  GPIO_Init_As_Output(ODOMETER_LCD_D4);
  GPIO_Init_As_Output(ODOMETER_LCD_D5);
  GPIO_Init_As_Output(ODOMETER_LCD_D6);
  GPIO_Init_As_Output(ODOMETER_LCD_D7);

  GPIO_Init_As_Output(IGNITION_STATE);

  CAN_Init();
}

void CLUSTER_Display_Indicator_State(int indicator, int indicatorValue)
{
	if(indicatorValue == OFF)
	{
		GPIO_Set_Off_Output(indicator);
	}
	else
	{
		GPIO_Set_On_Output(indicator);
	}
}

void CLUSTER_Display_Gas_Tank_Level(int *ptrTankLevelValue, int *ptrCount)
{
	if(*ptrCount == 0)
	{
		if(*ptrTankLevelValue < GAS_TANK_LEVEL_1_4)
		{
			GPIO_Set_Off_Output(GAS_TANK_LVL_1);
		}
		else
		{
			GPIO_Set_On_Output(GAS_TANK_LVL_1);
			if(*ptrTankLevelValue < GAS_TANK_LEVEL_1_2)
			{
				GPIO_Set_Off_Output(GAS_TANK_LVL_2);
			}
			else
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_2);
				if(*ptrTankLevelValue < GAS_TANK_LEVEL_3_4)
				{
					GPIO_Set_Off_Output(GAS_TANK_LVL_3);
				}
				else
				{
					GPIO_Set_On_Output(GAS_TANK_LVL_3);
					if(*ptrTankLevelValue < FULL_GAS_TANK_LEVEL)
					{
						GPIO_Set_Off_Output(GAS_TANK_LVL_4);
					}
					else
					{
						GPIO_Set_On_Output(GAS_TANK_LVL_4);
					}
				}
			}
		}
	}
	else
	{
		if(*ptrCount == 1)
		{
			GPIO_Set_On_Output(GAS_TANK_LVL_0);
			*ptrCount = *ptrCount + 1;
		}
		if(*ptrTankLevelValue < GAS_TANK_LEVEL_1_4)
		{
			*ptrCount = 0;
		}
		else if(*ptrTankLevelValue < GAS_TANK_LEVEL_1_2)
		{
			*ptrCount = *ptrCount + 1;
			if(*ptrCount == 40)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_1);
				*ptrCount = 0;
			}
		}
		else if(*ptrTankLevelValue < GAS_TANK_LEVEL_3_4)
		{
			*ptrCount = *ptrCount + 1;
			if(*ptrCount == 20)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_1);
			}
			if(*ptrCount == 40)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_2);
				*ptrCount = 0;
			}
		}
		else if(*ptrTankLevelValue < FULL_GAS_TANK_LEVEL)
		{
			*ptrCount = *ptrCount + 1;
			if(*ptrCount == 14)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_1);
			}
			if(*ptrCount == 26)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_2);
			}
			if(*ptrCount == 40)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_3);
				*ptrCount = 0;
			}
		}
		else
		{
			*ptrCount = *ptrCount + 1;
			if(*ptrCount == 10)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_1);
			}
			if(*ptrCount == 20)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_2);
			}
			if(*ptrCount == 30)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_3);
			}
			if(*ptrCount == 40)
			{
				GPIO_Set_On_Output(GAS_TANK_LVL_4);
				*ptrCount = 0;
			}
		}
	}
}

void CLUSTER_Display_Velocimeter_Value(int *ptrSpeedValue)
{
	int velocimeterValue;
	if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
	{
		velocimeterValue = ((*ptrSpeedValue)*6213)/10000;
	}
	else
	{
		velocimeterValue = *ptrSpeedValue;
	}
	int hundreds = (velocimeterValue/100)*100;
	int tens = ((velocimeterValue-hundreds)/10)*10;

	int unitsValue = velocimeterValue - hundreds - tens;
	int tensValue = tens/10;
	int hundredsValue = hundreds/100;

	switch(unitsValue)
	{
		case 0:
		{
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 1:
		{
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 2:
		{
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 3:
		{
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 4:
		{
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 5:
		{
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 6:
		{
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 7:
		{
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 8:
		{
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D3);
		}break;
		case 9:
		{
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
			GPIO_Set_On_Output(VELOCIMETER_UNITS_D3);
		}break;
		default:
			break;
	}

	switch(tensValue)
	{
		case 0:
		{
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 1:
		{
			GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 2:
		{
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 3:
		{
			GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 4:
		{
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 5:
		{
			GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 6:
		{
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 7:
		{
			GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
		}break;
		case 8:
		{
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D3);
		}break;
		case 9:
		{
			GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
			GPIO_Set_On_Output(VELOCIMETER_TENS_D3);
		}break;
		default:
			break;
	}

	switch(hundredsValue)
	{
		case 0:
		{
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 1:
		{
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 2:
		{
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 3:
		{
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 4:
		{
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 5:
		{
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 6:
		{
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 7:
		{
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 8:
		{
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		case 9:
		{
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
			GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
			GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D3);
		}break;
		default:
			break;
	}
}

void CLUSTER_Display_Odometer_Value(int *ptrDistance, int *ptrTripDistance)
{
	int distanceValue = *ptrDistance;
	int tripDistanceValue = *ptrTripDistance;

	LCD_DATA_BUS_DIRN_REG |= LCD_CTRL_BUS_MASK;
	LCD_CTRL_BUS_DIRN_REG |= LCD_CTRL_BUS_MASK;

	Lcd_CmdWrite(0x02);
	Lcd_CmdWrite(0x28);
	Lcd_CmdWrite(0x0E);
	Lcd_CmdWrite(0x01);
	Lcd_CmdWrite(0x80);

	Lcd_DataWrite((char)(32));
	Lcd_DataWrite((char)(32));
	Lcd_DataWrite((char)(32));

	int i = 0;
	int div = 1000000;
	for(i = 0; i < 7; i++)
	{
		Lcd_DataWrite((char)(48+distanceValue/div));
		distanceValue = distanceValue % div;
		div = div/10;
		if(i == 5)
		{
			Lcd_DataWrite((char)(46));
		}
	}

	Lcd_DataWrite((char)(75));
	Lcd_DataWrite((char)(109));

	Lcd_CmdWrite(0xc0);

	Lcd_DataWrite((char)(32));
	Lcd_DataWrite((char)(32));
	Lcd_DataWrite((char)(32));

	div = 1000000;

	for(i = 0; i < 7; i++)
	{
		Lcd_DataWrite((char)(48+tripDistanceValue/div));
		tripDistanceValue = tripDistanceValue % div;
		div = div/10;
		if(i == 5)
		{
			Lcd_DataWrite((char)(46));
		}
	}

	Lcd_DataWrite(75);
	Lcd_DataWrite(109);
}
