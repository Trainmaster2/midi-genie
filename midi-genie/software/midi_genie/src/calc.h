#pragma once

#ifndef CALC_H
#define CALC_H

#include <math.h>
#include <algorithm>

#define TWELVE_ROOT_TWO 1.0594630943592952645618252949463417007792043174941856285592084314
#define LOG2_TWELVE_ROOT_TWO 0.0833333333333333333333333333333333333333333333333333333333333333

extern const double NOISE_FREQ_LOOKUP[32768];

#define clamp(value, minVal, maxVal) std::min(std::max(value, minVal), maxVal)

#define note2frequency(note) (440 * pow(TWELVE_ROOT_TWO, note - 69))

#define frequency2note(frequency) clamp(round((log2(frequency / 440) / LOG2_TWELVE_ROOT_TWO) + 69), 0.0, 127.0)

#define calcualte_bend(frequency, note) clamp(round(8192 + 4096 * 12 * log2(frequency / note2frequency(note))), 0.0, 16383.0)

#define pulse2midi(timer, note, bend) frequency2midi((1789773 / (16 * (timer + 1.0))), note, bend)

#define triangle2midi(timer, note, bend) frequency2midi((1789773 / (32 * (timer + 1.0))), note, bend)

#define noise2midi(mode, start, period, note, bend) frequency2midi(1789773 / (NOISE_FREQ_LOOKUP[mode * start] * (period + 1.0)), note, bend)

void frequency2midi(double frequency, int& note, int& bend);

#endif
