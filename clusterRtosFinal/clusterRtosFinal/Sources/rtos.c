/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* SDK includes. */
#include "interrupt_manager.h"
#include "clock_manager.h"
#include "clockMan1.h"
#include "pin_mux.h"
#include "cluster.h"
#include "stdint.h"
#include "stdbool.h"

/* The number of items the queue can hold.  This is 1 as the receive task
will remove items as they are added, meaning the send task should always find
the queue empty. */
#define mainQUEUE_LENGTH					( 1 )

/* The LED turned on by the button interrupt, and turned off by the LED timer
(green). */
#define mainTIMER_CONTROLLED_LED			( 1UL << 1UL )

/* A block time of zero simply means "don't block". */
#define mainDONT_BLOCK						( 0UL )

/*Speed display shall refresh every 50ms */
#define SPD_TIMER_PERIOD_MS	(83 / portTICK_PERIOD_MS)
#define	SPD_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*Tank display shall refresh every 100ms */
#define TNK_TIMER_PERIOD_MS	(166 / portTICK_PERIOD_MS)
#define	TNK_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*Odometer display shall refresh every 200ms */
#define OD_TIMER_PERIOD_MS	(4 / portTICK_PERIOD_MS)
#define	OD_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*can messages shall refresh every 200ms */
#define CAN_TIMER_PERIOD_MS	(3 / portTICK_PERIOD_MS)
#define	CAN_PRIORITY		( tskIDLE_PRIORITY + 2 )

uint16_t speedValue = 0;
uint16_t tankLevel = 0;
uint8_t tankCounter = 1;
uint32_t odometerValue = 0;
uint32_t tripOdometerValue = 0;
uint8_t lcdCharBox = 1;

uint16_t pastTankLevel = 600;
uint32_t pastOdometerValue = 0;
uint32_t pastTripOdometerValue = 0;

static void RTOS_Can_Task( void *pvParameters );
static void RTOS_Velocimeter_Task( void *pvParameters );
static void RTOS_Gas_Tank_Task( void *pvParameters );
static void RTOS_Odometer_Task( void *pvParameters );

/* The queue used by both tasks. */
static QueueHandle_t xQueue = NULL;

void RTOS_Start( void )
{
  xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( unsigned long ) );                     /* Create the queue. */

  if( xQueue != NULL )
  {
    xTaskCreate( RTOS_Can_Task, "CAN", configMINIMAL_STACK_SIZE, NULL, CAN_PRIORITY, NULL );
    xTaskCreate( RTOS_Velocimeter_Task, "VELOCIMETER", configMINIMAL_STACK_SIZE, NULL, SPD_PRIORITY, NULL );
    xTaskCreate( RTOS_Gas_Tank_Task, "GAS_TANK", configMINIMAL_STACK_SIZE, NULL, TNK_PRIORITY, NULL );
    xTaskCreate( RTOS_Odometer_Task, "ODOMETER", configMINIMAL_STACK_SIZE, NULL, OD_PRIORITY, NULL );

    vTaskStartScheduler();                                                                /* Start the tasks and timer running. */
  }

  for( ; ; );
}

static void RTOS_Velocimeter_Task( void *pvParameters )
{
  TickType_t xNextWakeTime;
  (void)pvParameters;                                                                     /* Casting pvParameters to void because it is unused */
  xNextWakeTime = xTaskGetTickCount();                                                    /* Initialize xNextWakeTime - this only needs to be done once. */

  for( ;; )
  {
    vTaskDelayUntil( &xNextWakeTime, SPD_TIMER_PERIOD_MS );

    uint16_t velocimeterValue;
    if(speedValue > 399)
    {
      speedValue = 399;
    }
    if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
    {
      velocimeterValue = ((speedValue)*6213)/10000;
    }
    else
    {
      velocimeterValue = speedValue;
    }
    CLUSTER_Display_Velocimeter_Value(velocimeterValue);
  }
}

static void RTOS_Gas_Tank_Task( void *pvParameters )
{
  TickType_t xNextWakeTime;
  (void)pvParameters;                                                                     /* Casting pvParameters to void because it is unused */
  xNextWakeTime = xTaskGetTickCount();                                                    /* Initialize xNextWakeTime - this only needs to be done once. */

  for( ;; )
  {
    vTaskDelayUntil( &xNextWakeTime, TNK_TIMER_PERIOD_MS );

    tankLevel = EEEPROM_Read_Data(TANK_LEVEL);
    if(tankLevel != pastTankLevel)
    {
      CLUSTER_Display_Gas_Tank_Level(tankLevel, &tankCounter);
      if((tankCounter == 40) || (tankCounter == 0))
      pastTankLevel = tankLevel;
    }
  }
}

static void RTOS_Odometer_Task( void *pvParameters )
{
  TickType_t xNextWakeTime;
  (void)pvParameters;                                                                     /* Casting pvParameters to void because it is unused */
  xNextWakeTime = xTaskGetTickCount();                                                    /* Initialize xNextWakeTime - this only needs to be done once. */

  for( ;; )
  {
    vTaskDelayUntil( &xNextWakeTime, OD_TIMER_PERIOD_MS );

    if(lcdCharBox == 1)
    {
      if(GPIO_Read_Input(RESET_TRIP_ODOMETER))
      {
        EEEPROM_Write_Data(0, TRIP_ODOMETER);
      }
      if(GPIO_Read_Input(MILLES_OR_KILOMETERS))
      {
        odometerValue = (EEEPROM_Read_Data(ODOMETER)*6213)/10000;
        tripOdometerValue = (EEEPROM_Read_Data(TRIP_ODOMETER)*6213)/10000;
      }
      else
      {
        odometerValue = EEEPROM_Read_Data(ODOMETER);
        tripOdometerValue = EEEPROM_Read_Data(TRIP_ODOMETER);
      }
    }
    if(odometerValue > pastOdometerValue)
    {
      CLUSTER_Display_Odometer_Value(odometerValue, tripOdometerValue, &lcdCharBox);
    }
    else if(odometerValue < pastOdometerValue)
    {
      CLUSTER_Display_Odometer_Value_Error(&lcdCharBox);
    }
    else
    {
      ;
    }
  }
}

static void RTOS_Can_Task( void *pvParameters )
{
  TickType_t xNextWakeTime;
  (void)pvParameters;                                                                     /* Casting pvParameters to void because it is unused */
  xNextWakeTime = xTaskGetTickCount();                                                    /* Initialize xNextWakeTime - this only needs to be done once. */

  for( ;; )
  {
    vTaskDelayUntil( &xNextWakeTime, CAN_TIMER_PERIOD_MS );

    CAN_receive(&speedValue);
  }
}

void vApplicationMallocFailedHook( void )
{
	/* Called if a call to pvPortMalloc() fails because there is insufficient
	free memory available in the FreeRTOS heap.  pvPortMalloc() is called
	internally by FreeRTOS API functions that create tasks, queues, software
	timers, and semaphores.  The size of the FreeRTOS heap is set by the
	configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook( void )
{
	volatile size_t xFreeHeapSpace;

	/* This function is called on each cycle of the idle task.  In this case it
	does nothing useful, other than report the amount of FreeRTOS heap that
	remains unallocated. */
	xFreeHeapSpace = xPortGetFreeHeapSize();

	if( xFreeHeapSpace > 100 )
	{
		/* By now, the kernel has allocated everything it is going to, so
		if there is a lot of heap remaining unallocated then
		the value of configTOTAL_HEAP_SIZE in FreeRTOSConfig.h can be
		reduced accordingly. */
	}

}
/*-----------------------------------------------------------*/

/* The Blinky build configuration does not include run time stats gathering,
however, the Full and Blinky build configurations share a FreeRTOSConfig.h
file.  Therefore, dummy run time stats functions need to be defined to keep the
linker happy. */
void vMainConfigureTimerForRunTimeStats( void ) {}
unsigned long ulMainGetRunTimeCounterValue( void ) { return 0UL; }

/* A tick hook is used by the "Full" build configuration.  The Full and blinky
build configurations share a FreeRTOSConfig.h header file, so this simple build
configuration also has to define a tick hook - even though it does not actually
use it for anything. */
void vApplicationTickHook( void ) {}

/*-----------------------------------------------------------*/
