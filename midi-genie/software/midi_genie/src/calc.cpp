 #include "calc.h"

void frequency2midi(double frequency, int& note, int& bend)
{
    note = frequency2note(frequency);
    bend = calcualte_bend(frequency, note);
}
