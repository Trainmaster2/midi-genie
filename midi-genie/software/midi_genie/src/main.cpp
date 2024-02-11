#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xintc.h"
#include "xil_exception.h"

#include "calc.h"
#include "midi.h"
#include "apu.h"

// Get device IDs from xparameters.h
#define INTC_ID		XPAR_INTC_0_DEVICE_ID

static XIntc InterruptController;

int InitIntc(void);

int main() {
	if (InitIntc() != XST_SUCCESS) {
		xil_printf("!! Intc intialization failed !!\r\n");
		return XST_FAILURE;
	}
	reset_channels();
	
	xil_printf("Hello, world!\r\n");

	while (true) {}
}

int InitIntc(void)
{
	int Status;
	
	// Initialize the interrupt controller
	Status = XIntc_Initialize(&InterruptController, INTC_ID);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	// Perform a self-test
	Status = XIntc_SelfTest(&InterruptController);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	// Connect APU interrupts
	Status = connect_apu_interrupts(&InterruptController);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	// Start the interrupt controller
    Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	// Enable APU interrupts
	enable_apu_interrupts(&InterruptController);

	// Initialize the exception table
    Xil_ExceptionInit();

	// Register the interrupt controller
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &InterruptController);

	// Enable exceptions
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}
