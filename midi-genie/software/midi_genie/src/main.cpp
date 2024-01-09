#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "calc.h"

// Get device IDs from xparameters.h

int main() {
	xil_printf("Hello, world!\r\n");

	int note, bend;
	pulse2midi(254, note, bend);
	xil_printf("%d %d\r\n", note, bend);

	while (true) {}
}
