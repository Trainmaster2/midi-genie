#include "calc.h"
#include "config.h"

// Calculation is based off of a forum discussion and a lot of testing
// It's not perfect, but it's the best I can come up with
// https://forums.nesdev.org/viewtopic.php?p=293437
double noise2frequency(bool mode, uint8_t period, bool is_31_cycle)
{
    double frequency;
    if (mode)
    {
        frequency = 1789773 / (NOISE_TMR_LOOKUP[period] * 2 * (NOISE_TMR_LOOKUP[period] + 1.0));
        if (frequency > MAX_HEARING_FREQ)
        {
            frequency = 1789773 / (32767 * 2 * (NOISE_TMR_LOOKUP[period] + 1.0));
        }
        else if (frequency < MIN_HEARING_FREQ)
        {
            frequency = 1789773 / (NOISE_0_AVG_FREQ * 2 * (NOISE_TMR_LOOKUP[period] + 1.0));
        }
    }
    else
    {
        frequency = 1789773 / ((is_31_cycle ? 31 : 93) * 2 * (NOISE_TMR_LOOKUP[period] + 1.0));
        if (frequency < MIN_HEARING_FREQ)
        {
            frequency = 1789773 / (NOISE_1_AVG_FREQ * 2 * (NOISE_TMR_LOOKUP[period] + 1.0));      
        }
    }
    return frequency;
}

void frequency2midi(double frequency, int& note, int& bend)
{
    note = frequency2note(frequency);
#if USE_FINE_ADJUST
    bend = calcualte_bend(frequency, note);
#else
    bend = 8192;
#endif
}

void shift_frequency(double &frequency, int8_t octaves, int8_t semitones)
{
    if (octaves)
    {
        if (octaves > 0) { frequency *= 1 << octaves; }
        else { frequency /= 1 << (-1 * octaves); }
    }
    if (semitones)
    {
        if (semitones > 0) { frequency *= TWELFTH_ROOTS_OF_TWO[semitones - 1]; }
        else { frequency /= TWELFTH_ROOTS_OF_TWO[(-1 * semitones) - 1]; }
    }
}