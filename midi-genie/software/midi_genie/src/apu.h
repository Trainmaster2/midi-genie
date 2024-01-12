#pragma once

#ifndef APU_H
#define APU_H

#include "xparameters.h"
#include "xintc.h"
#include "xil_io.h"

#define INTC_ID		XPAR_INTC_0_DEVICE_ID
#define APU_IN_ID	XPAR_APU_FIFO_READER_BASEADDR

#define NES_RST_INT_ID	0
#define APU_MSG_INT_ID	1

// struct GenericBitField{
//     u32 type : 1;
// };

struct NoteBitField{
    // u32 type    : 1;
    u32 timer   : 11;
    u32 onoff   : 1;
    u32 channel : 3;
};

union APUBitField {
    u32 raw;
    // GenericBitField generic;
    NoteBitField note;
};

#define read_apu_message(apuMessage) apuMessage.raw = Xil_In32(APU_IN_ID)
#define print_note_message(noteMessage) xil_printf("Channel: %d, On/Off: %d, Timer: 0x%03x\r\n", noteMessage.channel, noteMessage.onoff, noteMessage.timer)

int connect_apu_interrupts(XIntc *InterruptController);
void enable_apu_interrupts(XIntc *InterruptController);
void nes_reset_handler(void* CallbackRef);
void apu_message_handler(void* CallbackRef);
void play_note_message(NoteBitField noteMessage);

#endif
