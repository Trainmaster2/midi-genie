#include "calc.h"

#include <math.h>

const double TWELVE_ROOT_TWO = 1.0594630943592952645618252949463417007792043174941856285592084314;

double note2frequency(double note)
{
    return 440 * pow(TWELVE_ROOT_TWO, note - 69);
}

double frequency2note(double frequency)
{
    return (log(frequency / 440) / log(TWELVE_ROOT_TWO)) + 69;
}

void frequency2midi(double frequency, int& note, int& bend)
{
    note = round(frequency2note(frequency));
    bend = round(8192 + 4096 * 12 * log2(frequency / note2frequency(note)));
}

void pulse2midi(int timer, int& note, int& bend)
{
    double frequency = 1789773 / (16 * (timer + 1.0));
    frequency2midi(frequency, note, bend);
}

void triangle2midi(int timer, int& note, int& bend)
{
    double frequency = 1789773 / (32 * (timer + 1.0));
    frequency2midi(frequency, note, bend);
}