#pragma once

#ifndef APU_H
#define APU_H

#include "config.h"
#include "xparameters.h"
#include "xintc.h"
#include "xil_io.h"

#define INTC_ID		XPAR_INTC_0_DEVICE_ID
#define APU_IN_ID	XPAR_APU_FIFO_READER_BASEADDR

#define NES_RST_INT_ID	0
#define APU_MSG_INT_ID	1

struct GenericBitField{
    u32 channel : 3;
};

struct PulseBitField{
    u32 channel : 3;
    u32 onoff   : 1;
    u32 timer   : 11;
    u32 volume  : 4;
};

union APUBitField {
    u32 raw;
    GenericBitField generic;
    PulseBitField pulse;
};

#define read_apu_message(apuMessage) apuMessage.raw = Xil_In32(APU_IN_ID)

#if APU_DEBUG

#define print_pulse_message(pulseMessage) xil_printf("Channel: %d, On/Off: %d, Timer: 0x%03x, Volume: 0x%01x\r\n", pulseMessage.channel, pulseMessage.onoff, pulseMessage.timer, pulseMessage.volume)

#else

#define print_pulse_message(pulseMessage)

#endif

int connect_apu_interrupts(XIntc *InterruptController);
void enable_apu_interrupts(XIntc *InterruptController);
void nes_reset_handler(void* CallbackRef);
void apu_message_handler(void* CallbackRef);
void play_pulse_message(PulseBitField pulseMessage);

#endif
