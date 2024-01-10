#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xil_io.h"

#include "calc.h"

// Get device IDs from xparameters.h
#define MIDI_OUT	XPAR_MIDI_FIFO_WRITER_BASEADDR

int main() {
	xil_printf("Hello, world!\r\n");

	int note, bend;
	pulse2midi(254, note, bend);
	xil_printf("%d %d\r\n", note, bend);
	Xil_Out32(MIDI_OUT, 0b11'10010000'01000101'01111111);
	Xil_Out32(MIDI_OUT, 0b11'10000000'01000101'01111111);

	while (true) {}
}
