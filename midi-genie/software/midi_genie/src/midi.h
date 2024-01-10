#pragma once

#ifndef MIDI_H
#define MIDI_H

#include "xparameters.h"
#include "xil_io.h"

#define MIDI_OUT XPAR_MIDI_FIFO_WRITER_BASEADDR

#define reset_notes_hard(channel) Xil_Out32(MIDI_OUT, 0b11'10110000'01111000'00000000 | ((channel & 0x0F) << 16))
#define reset_notes_soft(channel) Xil_Out32(MIDI_OUT, 0b11'10110000'01111011'00000000 | ((channel & 0x0F) << 16))
#define reset_controllers(channel) Xil_Out32(MIDI_OUT, 0b11'10110000'01111001'00000000 | ((channel & 0x0F) << 16))
#define note_on(channel, note, velocity) Xil_Out32(MIDI_OUT, 0b11'10010000'00000000'00000000 | ((channel & 0x0F) << 16) | ((note & 0x7F) << 8) | (velocity & 0x7F))
#define note_off(channel, note) Xil_Out32(MIDI_OUT, 0b11'10000000'00000000'00000000 | ((channel & 0x0F) << 16) | ((note & 0x7F) << 8))
#define pitch_bend(channel, pitch) Xil_Out32(MIDI_OUT, 0b11'11100000'00000000'00000000 | ((channel & 0x0F) << 16) | ((pitch & 0x007F) << 8) | ((pitch & 0x3F80) >> 7))

#endif
