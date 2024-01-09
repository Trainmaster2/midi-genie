#pragma once

#ifndef CALC_H
#define CALC_H

#include "math.h"

#define TWELVE_ROOT_TWO 1.0594630943592952645618252949463417007792043174941856285592084314

#define note2frequency(note) (440 * pow(TWELVE_ROOT_TWO, note - 69))

#define frequency2note(frequency) ((log(frequency / 440) / log(TWELVE_ROOT_TWO)) + 69)

#define frequency2midi(frequency, note, bend)                                \
do {                                                                         \
    note = round(frequency2note(frequency));                                 \
    bend = round(8192 + 4096 * 12 * log2(frequency / note2frequency(note))); \
} while (0)

#define pulse2midi(timer, note, bend) frequency2midi(1789773 / (16 * (timer + 1.0)), note, bend)

#define triangle2midi(timer, note, bend) frequency2midi(1789773 / (32 * (timer + 1.0)), note, bend)

#endif
