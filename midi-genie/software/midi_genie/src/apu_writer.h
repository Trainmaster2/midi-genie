#pragma once

#ifndef APU_WRITER_H
#define APU_WRITER_H

#include "xparameters.h"
#include "xil_io.h"

#define APU_WRITER_OUT_ID       XPAR_AXI_APU_WRITER_0_BASEADDR
#define APU_WRITER_STATE_ADDR   APU_WRITER_OUT_ID + 0
#define APU_WRITER_SET_ADDR     APU_WRITER_OUT_ID + 4
#define APU_WRITER_RESET_ADDR   APU_WRITER_OUT_ID + 8

#define CHANNEL_MASK  0b11111
#define PULSE_1_MASK  0b00001
#define PULSE_2_MASK  0b00010
#define TRIANGLE_MASK 0b00100
#define NOISE_MASK    0b01000
#define DMC_MASK      0b10000

#define get_channel_state() (Xil_In32(APU_WRITER_STATE_ADDR) & CHANNEL_MASK)
#define set_channel_state(bitfield) Xil_Out32(APU_WRITER_STATE_ADDR, (bitfield) & CHANNEL_MASK)
#define enable_channel(bitfield) Xil_Out32(APU_WRITER_SET_ADDR, (bitfield) & CHANNEL_MASK)
#define disable_channel(bitfield) Xil_Out32(APU_WRITER_RESET_ADDR, (bitfield) & CHANNEL_MASK)

#endif
