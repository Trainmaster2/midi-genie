#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "xil_io.h"

#include "calc.h"
#include "midi.h"

// Get device IDs from xparameters.h
#define MIDI_OUT	XPAR_MIDI_FIFO_WRITER_BASEADDR

int main() {
	reset_notes_hard(0);
	pitch_bend(0, 8192);
	
	xil_printf("Hello, world!\r\n");

	int note, bend;
	pulse2midi(160, note, bend);
	xil_printf("%d %d\r\n", note, bend);
	note_on(0, note, 0xff);
	pitch_bend(0, bend);

	while (true) {}
}
