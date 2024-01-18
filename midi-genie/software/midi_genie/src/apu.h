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
    u32 type : 1;
};

struct NoteBitField{
    u32 type    : 1;
    u32 channel : 3;
    u32 onoff   : 1;
    u32 timer   : 11;
};

struct VolumeBitField{
    u32 type    : 1;
    u32 channel : 3;
    u32 volume  : 4;
};

union APUBitField {
    u32 raw;
    GenericBitField generic;
    NoteBitField note;
    VolumeBitField volume;
};

#define read_apu_message(apuMessage) apuMessage.raw = Xil_In32(APU_IN_ID)

#if APU_DEBUG

#define print_note_message(noteMessage) xil_printf("Channel: %d, On/Off: %d, Timer: 0x%03x\r\n", noteMessage.channel, noteMessage.onoff, noteMessage.timer)
#define print_volume_message(volumeMessage) xil_printf("Channel: %d, Volume: 0x%01x\r\n", volumeMessage.channel, volumeMessage.volume)

#else

#define print_note_message(noteMessage)
#define print_volume_message(volumeMessage)

#endif

int connect_apu_interrupts(XIntc *InterruptController);
void enable_apu_interrupts(XIntc *InterruptController);
void nes_reset_handler(void* CallbackRef);
void apu_message_handler(void* CallbackRef);
void play_note_message(NoteBitField noteMessage);
void play_volume_message(VolumeBitField volumeMessage);

#endif
