#include "calc.h"
#include "config.h"

void frequency2midi(double frequency, int& note, int& bend)
{
    note = frequency2note(frequency);
#if USE_FINE_ADJUST
    bend = calcualte_bend(frequency, note);
#else
    bend = 8192;
#endif
}
