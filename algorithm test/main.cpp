#include <iostream>
#include <math.h>
#include <vector>
#include <set>
#include <map>

#include "extern_const.h"

using namespace std;

#define TEST_PULSE 0
#define TEST_TRIANGLE 0
#define TEST_BITFIELD 0
#define TEST_DEFINE_CONFIG 0
#define TEST_STRUCT 0
#define CALC_AVG_FREQ 0
#define PRINT_AVG_FREQ 0
#define TEST_EXTERN_CONST 0
#define CALC_CYCLE_LENGTH 1
#define PRINT_CYCLE_LENGTH 1
#define CALC_SEPARATE_AVG_FREQ 1

#define TEST 0

const double TWELVE_ROOT_TWO = 1.0594630943592952645618252949463417007792043174941856285592084314;

void noise_shift_reg(ushort& reg, bool mode);
double noise_average_frequency(ushort start, bool mode, set<ushort>& values);
int noise_length(ushort start, bool mode);
double note2frequency(double note);
double frequency2note(double frequency);
void frequency2notebend(double frequency, int& note, int& bend);
void pulse2midi(int timer, int& note, int& bend);
void debug_pulse(int timer, int expectedNote, int expectedBend);
void triangle2midi(int timer, int& note, int& bend);
void debug_triangle(int timer, int expectedNote, int expectedBend);

struct GenericBitField{
    uint32_t : 15;
    uint32_t type : 1;
};

struct NoteBitField{
    uint32_t timer : 11;
    uint32_t onoff : 1;
    uint32_t channel : 3;
    uint32_t type : 1;
};

union BitFieldUnion {
    GenericBitField generic;
    NoteBitField note;
    uint32_t raw;
};

struct LastPulse{
    int note;
    int bend;
};

// https://www.geeksforgeeks.org/different-ways-to-print-elements-of-vector/
template <typename S>
ostream& operator<<(ostream& os, const vector<S>& vector)
{
    // Printing all the elements
    if (vector.size())
    {
        bool first = true;
        for (auto element : vector) {
            os << (first ? "[ " : ", ") << element;
            first = false;
        }
        os << " ]";
    }
    else
    {
        os << "[ ]";
    }
    return os;
}

template <typename S>
ostream& operator<<(ostream& os, const set<S>& set)
{
    // Printing all the elements
    if (set.size())
    {
        bool first = true;
        for (auto element : set) {
            os << (first ? "{ " : ", ") << element;
            first = false;
        }
        os << " }";
    }
    else
    {
        os << "{ }";
    }
    return os;
}

template <typename S, typename T>
ostream& operator<<(ostream& os, const pair<S, T>& pair)
{
    // Printing all the elements
    os << "( " << pair.first << ", " << pair.second << " )";
    return os;
}

template <typename S, typename T>
ostream& operator<<(ostream& os, const map<S, T>& map)
{
    // Printing all the elements
    if (map.size())
    {
        bool first = true;
        for (auto element : map) {
            os << (first ? "{ " : ", ") << element.first << ": " << element.second;
            first = false;
        }
        os << " }";
    }
    else
    {
        os << "{ }";
    }
    return os;
}

int main()
{
#if TEST_PULSE 
    debug_pulse(1, 153, 7700);
    debug_pulse(253, 69, 8256);
    debug_pulse(254, 69, 7977);
    debug_pulse(2047, 33, 7700);
#endif

#if TEST_TRIANGLE
    debug_triangle(8, 115, 7540);
    debug_triangle(126, 69, 8256);
    debug_triangle(2033, 21, 8186);
#endif

#if TEST_BITFIELD
    BitFieldUnion bitFieldUnion;
    bitFieldUnion.raw = 0b1'100'0'000'00000010;
    cout << bitFieldUnion.generic.type << " " << bitFieldUnion.note.type << " " << bitFieldUnion.note.channel << " " << bitFieldUnion.note.onoff << " " << bitFieldUnion.note.timer << endl;
    bitFieldUnion.note.timer = 0xef;
    cout << bitFieldUnion.raw << endl;
#endif

#if TEST_DEFINE_CONFIG
    #if TEST
    cout << "A" << endl;
    #else
    cout << "B" << endl;
    #endif
#endif

#if TEST_STRUCT
    LastPulse lastPulse1 = {};
    int a = 5;
    cout << (a == lastPulse1.note) << ' ' << lastPulse1.note << endl;
    lastPulse1.note = a;
    cout << (a == lastPulse1.note) << ' ' << lastPulse1.note << endl;
    lastPulse1 = {};
    cout << (a == lastPulse1.note) << ' ' << lastPulse1.note << endl;
#endif

#if CALC_AVG_FREQ
    // ushort reg, last;
    // ulong count, firstCount;
    // double total;
    // bool first;
    // vector<ulong> counts;
    // set<ushort> current;
    // set<set<ushort>> all;
    // map<set<ushort>, double> freqs;
    // set<pair<double, double>> test;

    // for (ushort target = 1; target <= 32767; target++)
    // {
    //     reg = target;
    //     last = target & 0b1;
    //     count = 0;
    //     total = 0;
    //     first = true;
    //     counts.clear();
    //     current.clear();
    //     do {
    //         noise_shift_reg(reg, true);
    //         current.insert(reg);
    //         total++;
    //         count++;
    //         if (!last && (reg & 0b1))
    //         {
    //             if (first) {firstCount = count; first = false;}
    //             else {counts.push_back(count);}
    //             count = 0;
    //         }
    //         last = reg & 0b1;
    //     } while (reg != target);
    //     counts.push_back(firstCount + count);
    //     if (all.insert(current).second) {freqs[current] = total / counts.size(); test.insert(pair<double, double>(total / counts.size(), total));}
    // }

    // cout << all.size() << endl;
    // vector<double> tmp;
    // // for (auto el : freqs) {tmp.push_back(el.second);}
    // // cout << tmp << endl;
    // cout << test << endl;

    double freq;
    set<ushort> values;
    map<double, set<ushort>> freq2values;
    map<double, ulong> freq_counts;
    double value2freq[32768];

    for (ushort start = 1; start <= 32767; start++)
    {
        freq = noise_average_frequency(start, true, values);
        freq2values[freq].merge(values);
    }

    value2freq[0] = noise_average_frequency(1, false, values);
    for (auto el : freq2values) {for (auto val : el.second) {value2freq[val] = el.first; freq_counts[el.first]++;}}

    #if PRINT_AVG_FREQ
    bool first = true;
    cout << "const double NOISE_FREQ_LOOKUP[32768] =";
    for (auto el : value2freq) {cout << (first?" {":", ") << el; first = false;}
    cout << "};" << endl;
    #endif

    cout << freq_counts << endl;

    // double last = 0;
    // for (uint i = 0; i < 32768; i++)
    // {
    //     if (last != value2freq[i]) { cout << i << " "; }
    //     last = value2freq[i];
    // }
    // cout << 32768 << endl;
#endif

#if TEST_EXTERN_CONST
    cout << sizeof(TEST_CONST) << ',' << TEST_CONST[0] << ',' << TEST_CONST[1] << endl;
#endif

#if CALC_CYCLE_LENGTH
    map<int, set<ushort>> cycle_length;
    map<int, ulong> length_counts;
    
    for (ushort start = 1; start <= 32767; start++)
    {
        int length = noise_length(start, true);
        cycle_length[length].insert(start);
        length_counts[length]++;
    }

    cout << length_counts << endl;

    #if PRINT_CYCLE_LENGTH
    cout << cycle_length[31] << endl;
    for (auto el : cycle_length[31]) {printf("when x\"%04X\" => return '1';", el); cout << endl;}
    #endif

#if CALC_SEPARATE_AVG_FREQ
    #if CALC_AVG_FREQ
    freq2values.clear();
    freq_counts.clear();
    #else
    double freq;
    set<ushort> values;
    map<double, set<ushort>> freq2values;
    map<double, ulong> freq_counts;
    #endif

    for (auto entry : cycle_length)
    {
        for (auto start : entry.second)
        {
            freq = noise_average_frequency(start, true, values);
            freq2values[freq].merge(values);
        }
        for (auto el : freq2values) {for (auto val : el.second) {freq_counts[el.first]++;}}
        cout << entry.first << ": " << freq_counts << endl;
    }
#endif
#endif
}

void noise_shift_reg(ushort& reg, bool mode)
{
    short feedback = (reg & 0b1) ^ ((reg >> (mode ? 6 : 1)) & 0b1);
    reg = (feedback << 14) | (reg >> 1);
}

double noise_average_frequency(ushort start, bool mode, set<ushort>& values)
{
    ushort reg = start;
    ushort last = reg & 0b1;
    float length = 0;
    ulong pulses = 0;
    values.clear();
    do {
        noise_shift_reg(reg, mode);
        length++;
        values.insert(reg);
        if (!last && (reg & 0b1)) {pulses++;}
        last = reg & 0b1;
    } while (reg != start);
    return length / pulses;
}

int noise_length(ushort start, bool mode)
{
    ushort reg = start;
    int length = 0;
    do {
        noise_shift_reg(reg, mode);
        length++;
    } while (reg != start);
    return length;
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