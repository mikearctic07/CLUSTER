/*
 * cluster.c
 *
 *  Created on: 06/12/2018
 *      Author: azpei
 */

#include "cluster.h"

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

  LCD_Init();

  CAN_Init();

  EEEPROM_Init();

  if((GPIO_Read_Input(IGNITION_BUTTON)) && (GPIO_Read_Input(RESET_TRIP_ODOMETER)))
  {
    EEEPROM_Write_Data(500, TANK_LEVEL);
    EEEPROM_Write_Data(1000,ODOMETER);
    EEEPROM_Write_Data(233,TRIP_ODOMETER);
    while((GPIO_Read_Input(IGNITION_BUTTON)) && (GPIO_Read_Input(RESET_TRIP_ODOMETER)));
  }
}

void CLUSTER_Display_Indicator_State(uint8_t indicator, uint8_t indicatorValue)
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

void CLUSTER_Display_Gas_Tank_Level(uint16_t tankLevelValue, uint8_t *ptrCount)
{
  if(*ptrCount == 0)
  {
    if(tankLevelValue < GAS_TANK_LEVEL_1_4)
    {
      GPIO_Set_Off_Output(GAS_TANK_LVL_1);
      GPIO_Set_Off_Output(GAS_TANK_LVL_2);
      GPIO_Set_Off_Output(GAS_TANK_LVL_3);
      GPIO_Set_Off_Output(GAS_TANK_LVL_4);
    }
    else
    {
      GPIO_Set_On_Output(GAS_TANK_LVL_1);
      if(tankLevelValue < GAS_TANK_LEVEL_1_2)
      {
        GPIO_Set_Off_Output(GAS_TANK_LVL_2);
        GPIO_Set_Off_Output(GAS_TANK_LVL_3);
        GPIO_Set_Off_Output(GAS_TANK_LVL_4);
      }
      else
      {
        GPIO_Set_On_Output(GAS_TANK_LVL_2);
        if(tankLevelValue < GAS_TANK_LEVEL_3_4)
        {
          GPIO_Set_Off_Output(GAS_TANK_LVL_3);
          GPIO_Set_Off_Output(GAS_TANK_LVL_4);
        }
        else
        {
          GPIO_Set_On_Output(GAS_TANK_LVL_3);
          if(tankLevelValue < FULL_GAS_TANK_LEVEL)
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
    if(tankLevelValue < GAS_TANK_LEVEL_1_4)
    {
      *ptrCount = 0;
    }
    else if(tankLevelValue < GAS_TANK_LEVEL_1_2)
    {
      *ptrCount = *ptrCount + 1;
      if(*ptrCount == 40)
      {
        GPIO_Set_On_Output(GAS_TANK_LVL_1);
        *ptrCount = 0;
      }
    }
    else if(tankLevelValue < GAS_TANK_LEVEL_3_4)
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
    else if(tankLevelValue < FULL_GAS_TANK_LEVEL)
    {
      *ptrCount = *ptrCount + 1;
      if(*ptrCount == 14)
      {
        GPIO_Set_On_Output(GAS_TANK_LVL_1);
      }
      if(*ptrCount == 27)
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

void CLUSTER_Display_Velocimeter_Value(uint16_t velocimeterValue)
{
  uint16_t hundredsValue = velocimeterValue/100;
  uint16_t tensValue = (velocimeterValue-(hundredsValue*100))/10;
  uint16_t unitsValue = velocimeterValue - (hundredsValue*100) - (tensValue*10);

  switch(unitsValue)
  {
    case 0:
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 1:
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 2:
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 3:
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 4:
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 5:
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 6:
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 7:
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D3);
      break;
    case 8:
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D3);
      break;
    case 9:
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_UNITS_D2);
      GPIO_Set_On_Output(VELOCIMETER_UNITS_D3);
      break;
    default:
      break;
  }

  switch(tensValue)
  {
    case 0:
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 1:
      GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 2:
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 3:
      GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 4:
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 5:
      GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 6:
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 7:
      GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D3);
      break;
    case 8:
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D3);
      break;
    case 9:
      GPIO_Set_On_Output(VELOCIMETER_TENS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_TENS_D2);
      GPIO_Set_On_Output(VELOCIMETER_TENS_D3);
      break;
    default:
      break;
  }

  switch(hundredsValue)
  {
    case 0:
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 1:
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 2:
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 3:
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 4:
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 5:
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 6:
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 7:
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 8:
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    case 9:
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D0);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D1);
      GPIO_Set_Off_Output(VELOCIMETER_HUNDREDS_D2);
      GPIO_Set_On_Output(VELOCIMETER_HUNDREDS_D3);
      break;
    default:
      break;
  }
}
void CLUSTER_Display_Odometer_Value(uint32_t distanceValue, uint32_t tripDistanceValue, uint8_t *ptrLcdCharBox)
{
  switch(*ptrLcdCharBox)
  {
    case 1:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 2;
      break;
    case 2:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 3;
      break;
    case 3:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 4;
      break;
    case 4:
      LCD_Data_Write((char)(48+distanceValue/1000000));
      *ptrLcdCharBox = 5;
      break;
    case 5:
      distanceValue = distanceValue % 1000000;
      LCD_Data_Write((char)(48+distanceValue/100000));
      *ptrLcdCharBox = 6;
      break;
    case 6:
      distanceValue = distanceValue % 100000;
      LCD_Data_Write((char)(48+distanceValue/10000));
      *ptrLcdCharBox = 7;
      break;
    case 7:
      distanceValue = distanceValue % 10000;
      LCD_Data_Write((char)(48+distanceValue/1000));
      *ptrLcdCharBox = 8;
      break;
    case 8:
      distanceValue = distanceValue % 1000;
      LCD_Data_Write((char)(48+distanceValue/100));
      *ptrLcdCharBox = 9;
      break;
    case 9:
      distanceValue = distanceValue % 100;
      LCD_Data_Write((char)(48+distanceValue/10));
      *ptrLcdCharBox = 10;
      break;
    case 10:
      LCD_Data_Write((char)(46));
      *ptrLcdCharBox = 11;
      break;
    case 11:
      distanceValue = distanceValue % 10;
      LCD_Data_Write((char)(48+distanceValue));
      *ptrLcdCharBox = 12;
      break;
    case 12:
      if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
      {
        LCD_Data_Write((char)(77));
      }
      else
      {
        LCD_Data_Write((char)(75));
      }
      *ptrLcdCharBox = 13;
      break;
    case 13:
      if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
      {
        LCD_Data_Write((char)(105));
      }
      else
      {
        LCD_Data_Write((char)(109));
      }
      *ptrLcdCharBox = 14;
      break;
    case 41:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 42;
      break;
    case 42:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 43;
      break;
    case 43:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 44;
      break;
    case 44:
      LCD_Data_Write((char)(48+tripDistanceValue/1000000));
      *ptrLcdCharBox = 45;
      break;
    case 45:
      tripDistanceValue = tripDistanceValue % 1000000;
      LCD_Data_Write((char)(48+tripDistanceValue/100000));
      *ptrLcdCharBox = 46;
      break;
    case 46:
      tripDistanceValue = tripDistanceValue % 100000;
      LCD_Data_Write((char)(48+tripDistanceValue/10000));
      *ptrLcdCharBox = 47;
      break;
    case 47:
      tripDistanceValue = tripDistanceValue % 10000;
      LCD_Data_Write((char)(48+tripDistanceValue/1000));
      *ptrLcdCharBox = 48;
      break;
    case 48:
      tripDistanceValue = tripDistanceValue % 1000;
      LCD_Data_Write((char)(48+tripDistanceValue/100));
      *ptrLcdCharBox = 49;
      break;
    case 49:
      tripDistanceValue = tripDistanceValue % 100;
      LCD_Data_Write((char)(48+tripDistanceValue/10));
      *ptrLcdCharBox = 50;
      break;
    case 50:
      LCD_Data_Write((char)(46));
      *ptrLcdCharBox = 51;
      break;
    case 51:
      tripDistanceValue = tripDistanceValue % 10;
      LCD_Data_Write((char)(48+tripDistanceValue));
      *ptrLcdCharBox = 52;
      break;
    case 52:
      if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
      {
        LCD_Data_Write((char)(77));
      }
      else
      {
        LCD_Data_Write((char)(75));
      }
      *ptrLcdCharBox = 53;
      break;
    case 53:
      if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
      {
        LCD_Data_Write((char)(105));
      }
      else
      {
        LCD_Data_Write((char)(109));
      }
      *ptrLcdCharBox = 54;
      break;
    case 81:
      *ptrLcdCharBox = 1;
      LCD_Command_Write(0x80);
      break;
    default:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = *ptrLcdCharBox + 1;
      break;
  }
}

void CLUSTER_Display_Odometer_Value_Error(uint8_t *ptrLcdCharBox)
{
  switch(*ptrLcdCharBox)
  {
    case 1:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 2;
      break;
    case 2:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 3;
      break;
    case 3:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 4;
      break;
    case 4:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 5;
      break;
    case 5:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 6;
      break;
    case 6:
      LCD_Data_Write((char)(69));
      *ptrLcdCharBox = 7;
      break;
    case 7:
      LCD_Data_Write((char)(82));
      *ptrLcdCharBox = 8;
      break;
    case 8:
      LCD_Data_Write((char)(82));
      *ptrLcdCharBox = 9;
      break;
    case 9:
      LCD_Data_Write((char)(79));
      *ptrLcdCharBox = 10;
      break;
    case 10:
      LCD_Data_Write((char)(82));
      *ptrLcdCharBox = 11;
      break;
    case 11:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 12;
      break;
    case 12:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 13;
      break;
    case 13:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 14;
      break;
    case 14:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 15;
      break;
    case 15:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 16;
      break;
    case 18:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = 17;
      break;
    case 81:
      *ptrLcdCharBox = 1;
      LCD_Command_Write(0x80);
      break;
    default:
      LCD_Data_Write((char)(32));
      *ptrLcdCharBox = *ptrLcdCharBox + 1;
      break;
  }
}
