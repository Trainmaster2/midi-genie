#pragma once

#ifndef CALC_H
#define CALC_H

double note2frequency(double note);
double frequency2note(double frequency);
void frequency2midi(double frequency, int& note, int& bend);
void pulse2midi(int timer, int& note, int& bend);
void triangle2midi(int timer, int& note, int& bend);

#endif
