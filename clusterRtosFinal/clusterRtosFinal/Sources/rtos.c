
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
#define SPD_TIMER_PERIOD_MS	(50 / portTICK_PERIOD_MS)
#define	SPD_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*Tank display shall refresh every 100ms */
#define TNK_TIMER_PERIOD_MS	(100 / portTICK_PERIOD_MS)
#define	TNK_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*Odometer display shall refresh every 200ms */
#define OD_TIMER_PERIOD_MS	(200 / portTICK_PERIOD_MS)
#define	OD_PRIORITY		( tskIDLE_PRIORITY + 1 )

/*can messages shall refresh every 200ms */
#define CAN_TIMER_PERIOD_MS	(3 / portTICK_PERIOD_MS)
#define	CAN_PRIORITY		( tskIDLE_PRIORITY + 2 )

/*-----------------------------------------------------------*/

/*
 * Setup the NVIC, LED outputs, and button inputs.
 */
static void prvSetupHardware( void );

/*
 * The tasks as described in the comments at the top of this file.
 */

int speedFlag = 0;
int tnkFlag = 555;
char odFlag = 1;
char indFlag = 1;
int tnkCounter = 1;

static void canTask( void *pvParameters );
static void speedTask( void *pvParameters );
static void tnkTask( void *pvParameters );
static void odTask( void *pvParameters );

/*
 * The LED timer callback function.  This does nothing but switch off the
 * LED defined by the mainTIMER_CONTROLLED_LED constant.
 */


/*-----------------------------------------------------------*/

/* The queue used by both tasks. */
static QueueHandle_t xQueue = NULL;



/*-----------------------------------------------------------*/

void rtos_start( void )
{
	/* Configure the NVIC, LED outputs and button inputs. */
//	prvSetupHardware();

	/* Create the queue. */
	xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( unsigned long ) );

	if( xQueue != NULL )
	{
		/* Start the two tasks as described in the comments at the top of this
		file. */

		//		xTaskCreate( prvQueueReceiveTask, "RX", configMINIMAL_STACK_SIZE, NULL, mainQUEUE_RECEIVE_TASK_PRIORITY, NULL );
		//		xTaskCreate( prvQueueSendTask, "TX", configMINIMAL_STACK_SIZE, NULL, mainQUEUE_SEND_TASK_PRIORITY, NULL );

		xTaskCreate( canTask, "CAN", configMINIMAL_STACK_SIZE, NULL, CAN_PRIORITY, NULL );
		xTaskCreate( speedTask, "SPD", configMINIMAL_STACK_SIZE, NULL, SPD_PRIORITY, NULL );
		xTaskCreate( tnkTask, "TNK", configMINIMAL_STACK_SIZE, NULL, TNK_PRIORITY, NULL );
		xTaskCreate( odTask, "OD", configMINIMAL_STACK_SIZE, NULL, OD_PRIORITY, NULL );


		/* Create the software timer that is responsible for turning off the LED
		if the button is not pushed within 5000ms, as described at the top of
		this file. */
		//		xButtonLEDTimer = xTimerCreate( "ButtonLEDTimer", 			/* A text name, purely to help debugging. */
		//									mainBUTTON_LED_TIMER_PERIOD_MS,	/* The timer period, in this case 5000ms (5s). */
		//									pdFALSE,						/* This is a one shot timer, so xAutoReload is set to pdFALSE. */
		//									( void * ) 0,					/* The ID is not used, so can be set to anything. */
		//									prvButtonLEDTimerCallback		/* The callback function that switches the LED off. */
		//								);

		/* Start the tasks and timer running. */
		vTaskStartScheduler();
	}

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}

/*-----------------------------------------------------------*/

static void speedTask( void *pvParameters )
{
	TickType_t xNextWakeTime;
	/* Casting pvParameters to void because it is unused */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	for( ;; )
	{
		/* Place this task in the blocked state until it is time to run again.
		The block time is specified in ticks, the constant used converts ticks
		to ms.  While in the Blocked state this task will not consume any CPU
		time. */
		vTaskDelayUntil( &xNextWakeTime, SPD_TIMER_PERIOD_MS );
		//		Red led toogle

		CLUSTER_Display_Velocimeter_Value( &speedFlag);

	}
}

static void tnkTask( void *pvParameters )
{
	TickType_t xNextWakeTime;
	/* Casting pvParameters to void because it is unused */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	for( ;; )
	{
		/* Place this task in the blocked state until it is time to run again.
		The block time is specified in ticks, the constant used converts ticks
		to ms.  While in the Blocked state this task will not consume any CPU
		time. */
		vTaskDelayUntil( &xNextWakeTime, TNK_TIMER_PERIOD_MS );
		//		blue led toogle
		CLUSTER_Display_Gas_Tank_Level(&tnkFlag, &tnkCounter);

	}
}

static void odTask( void *pvParameters )
{
	TickType_t xNextWakeTime;
	/* Casting pvParameters to void because it is unused */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	for( ;; )
	{
		/* Place this task in the blocked state until it is time to run again.
		The block time is specified in ticks, the constant used converts ticks
		to ms.  While in the Blocked state this task will not consume any CPU
		time. */
		vTaskDelayUntil( &xNextWakeTime, OD_TIMER_PERIOD_MS );
		//		Green led toggle
		if(odFlag == 1){
			PTD-> PSOR |= 1<<16;
		}else{
			PTD-> PCOR |= 1<<16;
		}
	}
}

/*-----------------------------------------------------------*/
static void canTask( void *pvParameters )
{
	TickType_t xNextWakeTime;
	/* Casting pvParameters to void because it is unused */
	(void)pvParameters;

	/* Initialise xNextWakeTime - this only needs to be done once. */
	xNextWakeTime = xTaskGetTickCount();

	for( ;; )
	{
		/* Place this task in the blocked state until it is time to run again.
		The block time is specified in ticks, the constant used converts ticks
		to ms.  While in the Blocked state this task will not consume any CPU
		time. */
		vTaskDelayUntil( &xNextWakeTime, CAN_TIMER_PERIOD_MS );
		//		Red led toogle
		CAN_receive(&speedFlag,&tnkFlag, &odFlag, &indFlag);
	}
}
/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/

/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/

static void prvSetupHardware( void )
{

	/* Initialize and configure clocks
	 *  -   Setup system clocks, dividers
	 *  -   see clock manager component for more details
	 */
	//    CLOCK_SYS_Init(g_clockManConfigsArr, CLOCK_MANAGER_CONFIG_CNT,
	//                   g_clockManCallbacksArr, CLOCK_MANAGER_CALLBACK_CNT);
	//    CLOCK_SYS_UpdateConfiguration(0U, CLOCK_MANAGER_POLICY_AGREEMENT);

//	WDOG_disable();
//	SOSC_init_8MHz();       /* Initialize system oscillator for 8 MHz xtal */
//	SPLL_init_160MHz();     /* Initialize SPLL to 160 MHz with 8 MHz SOSC */
//	NormalRUNmode_80MHz();
//
//	PINS_DRV_SetMuxModeSel(LED_PORT, LED1,      PORT_MUX_AS_GPIO);
//	PINS_DRV_SetMuxModeSel(LED_PORT, LED2,      PORT_MUX_AS_GPIO);
//	PINS_DRV_SetMuxModeSel(LED_PORT, LED0,      PORT_MUX_AS_GPIO);
//
//	PCC->PCCn[PCC_PORTE_INDEX] |= PCC_PCCn_CGC_MASK; /* Enable clock for PORTE */
//	PORTE->PCR[4] |= PORT_PCR_MUX(5); /* Port E4: MUX = ALT5, CAN0_RX */
//	PORTE->PCR[5] |= PORT_PCR_MUX(5); /* Port E5: MUX = ALT5, CAN0_TX */
//
//	/* Change LED1, LED2 to outputs. */
//	PINS_DRV_SetPinsDirection(LED_GPIO,  (1 << LED1) | (1 << LED2) | (1 << LED0));
//
//	/* Start with LEDs off. */
//	PINS_DRV_SetPins(LED_GPIO, (1 << LED1) | (1 << LED2) | (1 << LED0));
//	CAN_init();
}
/*-----------------------------------------------------------*/

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
/*-----------------------------------------------------------*/

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
