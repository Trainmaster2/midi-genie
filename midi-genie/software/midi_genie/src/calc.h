#pragma once

#ifndef CALC_H
#define CALC_H

#include "config.h"
#include <math.h>
#include <algorithm>
#include "xil_types.h"

const double TWELFTH_ROOTS_OF_TWO[11] = {
    1.0594630943592952645618252949463417007792043174941856285592084314,
    1.1224620483093729814335330496791795162324111106139867534404095458,
    1.1892071150027210667174999705604759152929720924638174130190022247,
    1.2599210498948731647672106072782283505702514647015079800819751121,
    1.3348398541700343648308318811844527749123902126251982969389708121,
    1.4142135623730950488016887242096980785696718753769480731766797379,
    1.4983070768766814987992807320297957963021515537317468764410238441,
    1.5874010519681994747517056392723082603914933278998530098082857618,
    1.6817928305074290860622509524664297900800685247135690216264521719,
    1.7817974362806786094804524111810250159744252317563208067675139845,
    1.8877486253633869932838263133350687520151366066774856274842502846,
};
#define TWELVE_ROOT_TWO 1.0594630943592952645618252949463417007792043174941856285592084314
#define LOG2_TWELVE_ROOT_TWO 0.0833333333333333333333333333333333333333333333333333333333333333

const double NOISE_TMR_LOOKUP[16] = {2, 4, 8, 16, 32, 48, 64, 80, 101, 127, 190, 254, 381, 508, 1017, 2034};
#define NOISE_0_AVG_FREQ 4
#define NOISE_1_AVG_FREQ 3.875 // Accurate for all 31-long cycles and ~91% of 93-long cycles
#define MIN_HEARING_FREQ 20
#define MAX_HEARING_FREQ 40000

#define clamp(value, minVal, maxVal) std::min(std::max(value, minVal), maxVal)

#define note2frequency(note) (440 * pow(TWELVE_ROOT_TWO, note - 69))

#define frequency2note(frequency) clamp(round((log2(frequency / 440) / LOG2_TWELVE_ROOT_TWO) + 69), 0.0, 127.0)

#define calcualte_bend(frequency, note) clamp(round(8192 + 4096 * 12 * log2(frequency / note2frequency(note))), 0.0, 16383.0)

#define pulse2frequency(timer) (1789773 / (16 * (timer + 1.0)))

#define triangle2frequency(timer) (1789773 / (32 * (timer + 1.0)))

#define pulse2midi(timer, note, bend) frequency2midi(pulse2frequency(timer), note, bend)
#define triangle2midi(timer, note, bend) frequency2midi(triangle2frequency(timer), note, bend)
#define noise2midi(mode, period, is_31_cycle, note, bend) frequency2midi(noise2frequency(mode, period, is_31_cycle), note, bend)

double noise2frequency(bool mode, uint8_t period, bool is_31_cycle);
void frequency2midi(double frequency, int& note, int& bend);

void shift_frequency(double &frequency, int8_t octaves, int8_t semitones);

#endif
