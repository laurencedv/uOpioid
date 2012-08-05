/*!
 @file		uOpioid-B0.c
 @brief		OpIUM µOpioid node firmware revision B0
			
 @version	0.1
 @note		
 
 @date		February 28th 2011
 @author	Laurence DV
*/

// ################## Includes ################## //
//Hardware
#include <config/PIC32MX1xx_config.h>	//Must be before stddef_megaxone because of some define
#include <hardware.h>

//Library
#include <peripheral/pic32_clock.h>
#include <peripheral/pic32_timer.h>
#include <peripheral/pic32_uart.h>
#include <peripheral/pic32_pps.h>
#include <peripheral/op_output_compare.h>
#include <peripheral/op_interrupt.h>
#include <peripheral/pic32_spi.h>
//#include <peripheral/pic32_dma.h>
#include <soft/pic32_ringBuffer.h>
#include <soft/pic32_realtime.h>
//#include <device/pic32_SN65HVD11.h>

//COM wings
#include <device/op_nrf24l01+.h>

//Microchip's
#include <stdlib.h>
#include <sys/attribs.h>
//#include <plib.h>

//Dev macro
#include <datatype_megaxone.h>
#include <stddef_megaxone.h>
#include <splitvar_megaxone.h>
#include <bitmanip_megaxone.h>
// ############################################## //


// ################## Defines ################### //
//System
#define UOPIOID_SYSTICK_VALUE	1000				//Value of a sysTick (in µs)
#define OPIUM_NODE_UID			0x0000000000000001	//Unique Identification number of the Node

//Test
#define REFOCLK_PORT			A
#define REFOCLK					BIT2
#define LED_R_SYSTICK_INTERVAL	10
#define LED_G_SYSTICK_INTERVAL	15
#define LED_B_SYSTICK_INTERVAL	40

//COM RS-485

// ############################################## //


// ################## Prototype ################# //
U8 uOpioidInit(void);
void interruptSetIPL(U8 wantedIPL);
// ############################################## //


// ################## Variables ################# //
// System
U32 gu1 = 0;								//Global unsigned variable 1
U32 gu2 = 0;
U32 gu3 = 0;

U32 ledSTRed = 0;
U32 ledSTBlue = 0;
U32 ledSTGreen = 0;
U8 ledRed = 0;
U8 ledRedDir = 0;
U8 ledGreen = 0;
U8 ledGreenDir = 0;
U8 ledBlue = 0;
U8 ledBlueDir = 0;
extern U32 sysTick;

U8 allocFlag = 0;
U32 data = 0;
tRBufCtl * testBufCtlPtr;
tRBufCtl testBufCtl;
U8 sourceArray[10] = {0xEE,1,2,3,4,5,6,7,8,9};
U8 checkArray[10] = {0,0,0,0,0,0,0,0,0,0};

// COM 0
tSPISlaveControl * pCOM0SlaveControl = NULL;			//COM0 SPI Control structure
tSPITransaction COM0ControlTransaction;

// RAM
tSPISlaveControl * pRAMSlaveControl = NULL;				//RAM SPI Control structure

// ############################################## //


// ################ Main Program ################ //
int main(void)
{
	//* --------------- Init --------------- *//
	uOpioidInit();

	// Init the Clock
	//outputPIN(REFOCLK);
	//REFOCONbits.RODIV = 4;	//Div by 8
	//REFOCONbits.ROSEL = 1;	//PBCLK outputed
	//REFOCONbits.OE = 1;		//enbale ouput
	//REFOCONbits.ON = 1;		//enable REFOCLK
	//* ------------------------------------ *//


	//* ----------- Testing Space ---------- *//

	timerInit(TIMER_2,0);
	ocSetConfig(OC_1,OC_MODE_PWM|OC_TIMER_2);
	ocSetConfig(OC_2,OC_MODE_PWM|OC_TIMER_2);
	ocSetConfig(OC_3,OC_MODE_PWM|OC_TIMER_2);
	pwmSetPeriod(OC_1,1000);
	pwmSetPeriod(OC_2,1000);
	pwmSetPeriod(OC_3,1000);
	ocStart(OC_1);
	ocStart(OC_2);
	ocStart(OC_3);

	//SPI test
	outputPIN(COM0_IO2);

	nrfInit(COM0_SPI_ID, &LATA, COM0_IO2);

	COM0ControlTransaction.pSlave = pCOM0SlaveControl;
	COM0ControlTransaction.control.all = 0;
	COM0ControlTransaction.transferNb = 10;
	COM0ControlTransaction.txNbRemaining = 10;
	COM0ControlTransaction.rxNbDone = 0;
	COM0ControlTransaction.pTX = sourceArray;
	COM0ControlTransaction.pRX = checkArray;

	spiStartTransaction(&COM0ControlTransaction);

	//testBufCtlPtr = rBufCreate(10, sizeof(U8));
	//if (uartInit(0,UART_TX_INT_TSR_EMPTY|UART_RX_INT_DATA_READY|UART_MODE_8N1,1250000) == STD_EC_SUCCESS)
	//	setPIN(LED_B);
	//* ------------------------------------ *//

	
	//* ----------- Loop forever ----------- *//
	for (;;)
	{
		if ((sysTick - ledSTRed) >= LED_R_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledRed == 255)
				ledRedDir = 0;
			else if (ledRed == 0)
				ledRedDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledRedDir)
				ledRed++;
			else
				ledRed--;
			// -------------------- //

			pwmSetDuty(OC_1,ledRed,0xFF);

			ledSTRed = sysTick;
		}

		if ((sysTick - ledSTGreen) >= LED_G_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledGreen == 255)
				ledGreenDir = 0;
			else if (ledGreen == 0)
				ledGreenDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledGreenDir)
				ledGreen++;
			else
				ledGreen--;
			// -------------------- //

			pwmSetDuty(OC_2,ledGreen,0xFF);

			ledSTGreen = sysTick;
		}

		if ((sysTick - ledSTBlue) >= LED_B_SYSTICK_INTERVAL)
		{
			// -- Handle boundary -- //
			if (ledBlue == 255)
				ledBlueDir = 0;
			else if (ledBlue == 0)
				ledBlueDir = 1;
			// --------------------- //

			// -- Duty mouvement -- //
			if (ledBlueDir)
				ledBlue++;
			else
				ledBlue--;
			// -------------------- //

			pwmSetDuty(OC_3,ledBlue,0xFF);

			ledSTBlue = sysTick;
		}

		/*
		switch(ledID)
		{
			case 0:	setPIN(LED_R);		setPIN(LED_G);		setPIN(LED_B);		break;
			case 1:	clearPIN(LED_R);	setPIN(LED_G);		setPIN(LED_B);		break;
			case 2:	setPIN(LED_R);		clearPIN(LED_G);	setPIN(LED_B);		break;
			case 3:	setPIN(LED_R);		setPIN(LED_G);		clearPIN(LED_B);	break;
			case 4:	clearPIN(LED_R);	clearPIN(LED_G);	setPIN(LED_B);		break;
			case 5:	clearPIN(LED_R);	setPIN(LED_G);		clearPIN(LED_B);	break;
			case 6:	setPIN(LED_R);		clearPIN(LED_G);	clearPIN(LED_B);	break;
			case 7:	clearPIN(LED_R);	clearPIN(LED_G);	clearPIN(LED_B);	break;
			default: ledID = 0;
		}
		*/

		//uartSendByte(0,0x55);
	}
	//* ------------------------------------ *//
}
// ############################################## //


// ################ Sub-routine ################# //
/**
* \fn		U8 uOpioidInit(void)
* @brief	Initialise the µOpioid node to the default state
* @note		
* @arg		nothing
* @return	U8 errorCode		STD Error Code (return STD_EC_SUCCESS if successful)
*/

U8 uOpioidInit(void)
{
	U8 errorCode = STD_EC_SUCCESS;

	// ====== µC Initialisation ====== //
	// Reset the Port
	LATB = LED_B;								//Everything to 0 except LED_B (active low)
	LATA = LED_R|LED_G;							//Everything to 0 except LED_B and LED_R (active low)

	// -- Set the IO direction -- //
	TRISA = 0xFFFF ^ (LED_R|LED_G);				//Everything in input except LED_R and LED_G
	TRISB = 0xFFFF ^ (LED_B|RAM_MOSI|RAM_SCK|RAM_SS|RAM_HOLD|EXT0_TX|COM0_TX|COM0_MOSI|COM0_SCK);		//Everything in input except LED_B, RAM_MOSI,RAM_SCK,RAM_HOLD,EXT0_TC,COM0_TX,COM0_MOSI and COM0_SCK
	// -------------------------- //

	// -- Attach pins to peripherals -- //
	ppsUnlock();
	ppsAttachOut(U1TX,RPB4);
	ppsAttachIn(U1RX,RPA4);

	ppsAttachOut(U2TX,RPB10);
	ppsAttachIn(U2RX,RPB11);

	ppsAttachOut(SDO1,RPB6);
	ppsAttachIn(SDI1,RPB8);

	ppsAttachOut(SDO2,RPB1);
	ppsAttachIn(SDI2,RPB2);

	ppsAttachIn(INT4,RPB3);
	ppsAttachIn(INT2,RPA2);

	ppsAttachOut(OC1,RPA0);
	ppsAttachOut(OC2,RPA1);
	ppsAttachOut(OC3,RPB0);

	//ppsAttachOut(REFCLKO,RPA2);
	ppsLock();
	// -------------------------------- //
	
	// -- Init the Interrupts -- //
	INTEnableSystemMultiVectoredInt();

	intFastSetPriority(COM0_IRQ0_INT_ID, 4);
	intSetExternalEdge(COM0_IRQ0_INT_IRQ, RISING);			//COM0 IRQ0 is Rising edge by default
	intFastSetPriority(COM0_IRQ1_INT_ID, 4);
	intSetExternalEdge(COM0_IRQ1_INT_IRQ, RISING);			//COM0 IRQ1 is Rising edge by default
	intFastSetPriority(COM0_SPI_INT_ID, 5);
	intFastSetPriority(COM0_UART_INT_ID, 5);

	intFastSetPriority(RAM_SPI_INT_ID, 6);

	intFastSetPriority(EXT0_IRQ_INT_ID, 2);
	intSetExternalEdge(EXT0_IRQ_INT_IRQ, RISING);			//EXT0 IRQ0 is Rising edge by default
	intFastSetPriority(EXT0_UART_INT_ID, 3);
	intFastSetPriority(BTN_INT_ID, 1);
	intSetExternalEdge(BTN_INT_IRQ, FALLING);				//BTN Falling edge trigger
	intFastInit(BTN_INT_ID);

	INTEnableInterrupts();
	// ------------------------- //

	// -- Init the realTime system -- //
	errorCode = realTimeInit(UOPIOID_SYSTICK_VALUE);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;
	// ------------------------------ //
	// =============================== //


	// ====== External Initialization ====== //
	// -- RAM initialisation -- //
	//Init the RAM SPI
	spiSetConfig(RAM_SPI_ID,SPI_MODE_MASTER|SPI_ENHANCED_BUF|SPI_TX_BUF_INT_BUF_EMPTY|SPI_RX_BUF_INT_BUF_HALF_FULL);
	spiSetBaudRate(RAM_SPI_ID,5000000);
	spiStart(RAM_SPI_ID);

	spiAddSlave(RAM_SPI_ID,&LATB,RAM_SS);
	// ------------------------ //

	// -- COM0 Initialisation -- //
	//Init the COM Uart
	errorCode = uartInit(COM0_UART_ID,UART_TX_INT_TSR_EMPTY|UART_RX_INT_DATA_READY|UART_MODE_8N1);
	if (errorCode != STD_EC_SUCCESS)
		return errorCode;

	//Init the COM SPI
	spiSetConfig(COM0_SPI_ID,SPI_MODE_MASTER|SPI_ENHANCED_BUF|SPI_TX_BUF_INT_BUF_EMPTY|SPI_RX_BUF_INT_BUF_HALF_FULL);
	spiSetBaudRate(COM0_SPI_ID,5000000);
	spiStart(COM0_SPI_ID);

	//Detect presence

	// ------------------------- //


	// -- EXT0 Initialisation -- //
	//Init the EXT Uart

	//Detect presence

	// ------------------------- //
	// ===================================== //
	
	return errorCode;
}

/**
* \fn		void GIOIndentifyCOM(U8 COMSocket)
* @brief	Identify the new COM board on the designated COM Socket
* @note
* @arg		U8 COMSocket		COM Socket to check
* @return	nothing
*/
void GIOIndentifyCOM(U8 COMSocket)
{
	// -- Select the correct COM Socket -- //
	switch (COMSocket)
	{
		case 0:
		{
			
			break;
		}
	}
	// ----------------------------------- //

	//Mark this COM Socket as inactive

	//Read ADC
}


void interruptSetIPL(U8 wantedIPL)
{
	U32 temp_CP0;

	temp_CP0 = (_CP0_GET_STATUS() & 0xFFFFE3FF );       // Get the actual Status content striping out the IPL value
	temp_CP0 |= (wantedIPL<<10);						//Offset the new IPL
	_CP0_SET_STATUS(temp_CP0);							//Save and apply the new IPL
}
// ############################################## //


// ################# Interrupt ################## //

void __ISR(COM0_UART_VECTOR, IPL5SOFT) com0uartISR(void)
{
	extern tRBufCtl * uartRxBuf[];
	extern tRBufCtl * uartTxBuf[];

	U32 interruptCheck = intFastCheckFlag(INT_UART_1);			//Fetch the all the flags for UART_1
	U16 byteNb;
	U8 tempBuf[8];

	// === RX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_RX)
	{
		// -- Empty the buffer -- //
		while (U1STAbits.URXDA)
		{
			// Discard if error detected
			if (U1STA & (UART_MASK_PERR|UART_MASK_FERR))
				U1RXREG;
			//Save if the data is valid
			else
				tempBuf[byteNb] = U1RXREG;

			byteNb++;
		}
		// ---------------------- //

		// -- Save to the buffer -- //
		rBufPushU8(uartRxBuf[UART_1], (void*)tempBuf, byteNb, RBUF_FREERUN_PTR);	//Can loose data if the buffer is full
		// ------------------------ //

		intFastClearFlag(INT_UART_1_RX);
	}
	// ===================== //

	// === TX Interrupt ==== //
	if (interruptCheck & INT_MASK_UART_TX)
	{
		//Check for pending data
		byteNb = rBufGetUsedSpace(uartTxBuf[UART_1]);

		// -- No more byte to send --- //
		if (!byteNb)
			clearBIT(U1STA,UTXEN_MASK);		//Stop the transmitter
		// -- Send the pending data -- //
		else
		{
			if (byteNb > UART_FIFO_LVL)			//If there is more byte that the HW buffer can
				byteNb = UART_FIFO_LVL;			//contain, load the maximum

			//Pull the correct number of byte from the soft buffer into the HW buffer
			rBufPullU8(uartTxBuf[UART_1], (void*)&U1TXREG, byteNb, RBUF_FIXED_PTR);
		}
		// --------------------------- //

		intFastClearFlag(INT_UART_1_TX);
	}
	// ===================== //

	// === ERR Interrupt === //
	if (interruptCheck & INT_MASK_UART_ERR)
	{
		// -- Overrun Error -- //
		if (U1STAbits.OERR)
		{
			//Read all the HW buffer

			//Clear the error flag
		}
		// -- Framing Error -- //
		else if (U1STAbits.FERR)
		{
			//Clear the error flag
		}
		else
		// -- Parity Error --- //
		{
			//Clear the error flag
		}
		// ------------------- //

		intFastClearFlag(INT_UART_1_ERR);
	}
	// ===================== //
}

void __ISR(RT_TIMER_VECTOR, IPL7SOFT) rtTimerISR(void)
{
	extern U32 sysTick;

	sysTick++;

	intFastClearFlag(RT_TIMER_INT_ID);
}

void __ISR(BTN_VECTOR, IPL1SOFT) btnISR(void)
{
	spiStartTransaction(&COM0ControlTransaction);
	
	// clear the interrupt flag
	intFastClearFlag(INT_EXT_INT_0);
}

void __ISR(COM0_SPI_VECTOR, IPL5SOFT) com0spiISR(void)
{
	spiMasterEngine(COM0_SPI_ID,intFastCheckFlag(COM0_SPI_INT_ID));

	intFastClearFlag(COM0_SPI_INT_ID);
}
// ############################################## //
