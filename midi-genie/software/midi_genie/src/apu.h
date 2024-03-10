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

struct TriangleBitField{
    u32 channel : 3;
    u32 onoff   : 1;
    u32 timer   : 11;
};

struct NoiseBitField{
    u32 channel : 3;
    u32 onoff   : 1;
    u32 mode    : 1;
    u32 period  : 4;
    u32 start   : 15;
    u32 volume  : 4;
};

union APUBitField {
    u32 raw;
    GenericBitField generic;
    PulseBitField pulse;
    TriangleBitField triangle;
    NoiseBitField noise;
};

#define read_apu_message(apuMessage) apuMessage.raw = Xil_In32(APU_IN_ID)

struct LastPulse{
    int timer = -1;
    int note = -1;
    int bend = 8192;
    int volume = 0xF;
};

struct LastTriangle{
    int timer = -1;
    int note = -1;
    int bend = 8192;
};

struct LastNoise{
    int mode = 0;
    int period = -1;
    int note = -1;
    int bend = 8192;
    int volume = 0xF;
};

#if USE_HARD_RESET

#define stop_notes(channel) reset_notes_hard(channel)

#else

#define stop_notes(channel) reset_notes_soft(channel)

#endif

#if APU_DEBUG

#define print_pulse_message(pulseMessage) xil_printf("Channel: %d, On/Off: %d, Timer: 0x%03x, Volume: 0x%01x\r\n", pulseMessage.channel, pulseMessage.onoff, pulseMessage.timer, pulseMessage.volume)
#define print_triangle_message(triangleMessage) xil_printf("Channel: %d, On/Off: %d(%d), Timer: 0x%03x\r\n", triangleMessage.channel, triangleMessage.onoff, triangleMessage.timer >= 2, triangleMessage.timer)
#define print_noise_message(noiseMessage) xil_printf("Channel: %d, On/Off: %d, Mode: %d, Period: 0x%01x, Start: 0x%04x, Volume: 0x%01x\r\n", noiseMessage.channel, noiseMessage.onoff, noiseMessage.mode, noiseMessage.period, noiseMessage.start, noiseMessage.volume)

#else

#define print_pulse_message(pulseMessage)
#define print_triangle_message(triangleMessage)
#define print_noise_message(noiseMessage)

#endif

int connect_apu_interrupts(XIntc *InterruptController);
void enable_apu_interrupts(XIntc *InterruptController);
void nes_reset_handler(void* CallbackRef);
void apu_message_handler(void* CallbackRef);
void play_pulse_message(PulseBitField pulseMessage);
void play_triangle_message(TriangleBitField triangleMessage);
void play_noise_message(NoiseBitField noiseMessage);

#endif
