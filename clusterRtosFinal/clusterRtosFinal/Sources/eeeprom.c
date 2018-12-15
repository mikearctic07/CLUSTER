/*
 * eeeprom.c
 *
 *  Created on: 05/12/2018
 *      Author: azpei
 */

#include <eeeprom.h>

  typedef struct
  {
  	unsigned int odo;
  	unsigned int tripOdo;
  	unsigned int tankLevel;
  } eeerom_data_t;

  __attribute__ ((section(".eeeprom"))) eeerom_data_t eeerom_data;

int EEEPROM_Init()
{
	if ((FTFC->FCNFG & FTFC_FCNFG_EEERDY_MASK) == 0U)
	{
		volatile int timeout;
		FTFC->FCCOB[3]=0x80;	// Program Partition command
		FTFC->FCCOB[2]=0x00;	// CSEc key size
		FTFC->FCCOB[1]=0x00;	// Security flag extension - User Key verify only disabled
		FTFC->FCCOB[0]=0x00;	// Load data int EEERAM in reset sequence
		FTFC->FCCOB[7]=0x02;	// EEPROM data set size code - 4k
		FTFC->FCCOB[6]=0x08;	// EEPROM backup size - 64k
		FTFC->FSTAT |=  FTFC_FSTAT_CCIF_MASK;

		while ((FTFC->FSTAT & FTFC_FSTAT_CCIF_MASK) == 0U)
		{
			timeout++;
		}
	}
	else
	{
		return EEE_ALREADY_ENABLED;
	}

	return EEE_SUCCESS;
}

int EEEPROM_Write_Data(int data, int target)
{
	while ((FTFC->FSTAT & FTFC_FSTAT_CCIF_MASK) == 0){}
	switch(target)
	{
		case ODOMETER:
		{
			eeerom_data.odo = data;
		}break;
		case TRIP_ODOMETER:
		{
			eeerom_data.tripOdo = data;
		}break;
		case TANK_LEVEL:
		{
			eeerom_data.tankLevel = data;
		}break;
		default:
		{

		}break;
	}
	return 0;
}

int EEEPROM_Read_Data(int target)
{
	int data;
	while ((FTFC->FSTAT & FTFC_FSTAT_CCIF_MASK) == 0){}
	switch(target)
	{
		case ODOMETER:
		{
			data = eeerom_data.odo;
		}break;
		case TRIP_ODOMETER:
		{
			data = eeerom_data.tripOdo;
		}break;
		case TANK_LEVEL:
		{
			data = eeerom_data.tankLevel;
		}break;
		default:
		{

		}break;
	}
	return data;
}

