#include <iostream>
#include <math.h>

using std::cout;
using std::endl;

const double TWELVE_ROOT_TWO = 1.0594630943592952645618252949463417007792043174941856285592084314;

double note2frequency(double note);
double frequency2note(double frequency);
void frequency2notebend(double frequency, int& note, int& bend);
void pulse2midi(int timer, int& note, int& bend);
void debug_pulse(int timer, int expectedNote, int expectedBend);
void triangle2midi(int timer, int& note, int& bend);
void debug_triangle(int timer, int expectedNote, int expectedBend);

int main()
{
    debug_pulse(1, 153, 7700);
    debug_pulse(253, 69, 8256);
    debug_pulse(254, 69, 7977);
    debug_pulse(2047, 33, 7700);
    
    debug_triangle(8, 115, 7540);
    debug_triangle(126, 69, 8256);
    debug_triangle(2033, 21, 8186);
}

double note2frequency(double note)
{
    return 440 * pow(TWELVE_ROOT_TWO, note - 69);
}

double frequency2note(double frequency)
{
    return (log(frequency / 440) / log(TWELVE_ROOT_TWO)) + 69;
}

void frequency2notebend(double frequency, int& note, int& bend)
{
    note = round(frequency2note(frequency));
    bend = round(8192 + 4096 * 12 * log2(frequency / note2frequency(note)));
}

void pulse2midi(int timer, int& note, int& bend)
{
    double frequency = 1789773 / (16 * (timer + 1.0));
    frequency2notebend(frequency, note, bend);
}

void debug_pulse(int timer, int expectedNote, int expectedBend)
{
    int note, bend;
    cout << endl;
    cout << "Pulse timer value: " << timer << endl;
    cout << "Expected: Note " << expectedNote << " Bend " << expectedBend << endl;
    pulse2midi(timer, note, bend);
    cout << "Calculated: Note " << note << " Bend " << bend << endl;
    bool noteMatch = note == expectedNote;
    bool bendMatch = bend == expectedBend;
    if (noteMatch && bendMatch) 
        cout << "Correct!" << endl;
    else if (noteMatch)
        cout << "Bend is incorrect!" << endl;
    else if (bendMatch)
        cout << "Note is incorrect" << endl;
    else
        cout << "Incorrect!" << endl;
}

void triangle2midi(int timer, int& note, int& bend)
{
    double frequency = 1789773 / (32 * (timer + 1.0));
    frequency2notebend(frequency, note, bend);
}

void debug_triangle(int timer, int expectedNote, int expectedBend)
{
    int note, bend;
    cout << endl;
    cout << "Triangle timer value: " << timer << endl;
    cout << "Expected: Note " << expectedNote << " Bend " << expectedBend << endl;
    triangle2midi(timer, note, bend);
    cout << "Calculated: Note " << note << " Bend " << bend << endl;
    bool noteMatch = note == expectedNote;
    bool bendMatch = bend == expectedBend;
    if (noteMatch && bendMatch) 
        cout << "Correct!" << endl;
    else if (noteMatch)
        cout << "Bend is incorrect!" << endl;
    else if (bendMatch)
        cout << "Note is incorrect" << endl;
    else
        cout << "Incorrect!" << endl;
}