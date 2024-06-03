#include "apu.h"
#include "calc.h"
#include "midi.h"
#include "xil_types.h"

LastPulse pulse1 = {};
LastPulse pulse2 = {};
LastTriangle triangle = {};
LastNoise noise = {};
LastDMC dmc = {};

int8_t octaves_shift = 0;
int8_t semitones_shift = 0;

int connect_apu_interrupts(XIntc *InterruptController)
{
    int Status;

	// Connect the NES reset interrupt handler
    Status = XIntc_Connect(InterruptController, NES_RST_INT_ID, (XInterruptHandler)nes_reset_handler, (void*)0);
    if (Status != XST_SUCCESS) return XST_FAILURE;

	// Connect the APU message interrupt handler
    Status = XIntc_Connect(InterruptController, APU_MSG_INT_ID, (XInterruptHandler)apu_message_handler, (void*)InterruptController);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

void enable_apu_interrupts(XIntc *InterruptController)
{
    // Enable the NES reset interrupt
    XIntc_Enable(InterruptController, NES_RST_INT_ID);

    // Enable the APU message interrupt
    XIntc_Enable(InterruptController, APU_MSG_INT_ID);
}

void nes_reset_handler(void* CallbackRef)
{
	reset_channels();
    pulse1 = {};
    pulse2 = {};
    triangle = {};
    noise = {};
    dmc = {};
}

void apu_message_handler(void* CallbackRef)
{
    APUBitField apuMessage;
    read_apu_message(apuMessage);
    switch (apuMessage.generic.channel)
    {
        case 0:
        case 1:
            play_pulse_message(apuMessage.pulse);
            break;
        case 2:
            play_triangle_message(apuMessage.triangle);
            break;
        case 3:
            play_noise_message(apuMessage.noise);
            break;
        case 4:
            play_dmc_message(apuMessage.dmc);
            break;
    }
    // XIntc_Acknowledge((XIntc*)CallbackRef, APU_MSG_INT_ID);
}

void play_pulse_message(PulseBitField pulseMessage)
{
    print_pulse_message(pulseMessage);
    int note, bend;
    double frequency;
    LastPulse* lastMessage;

    if (pulseMessage.channel) { lastMessage = &pulse2; }
    else { lastMessage = &pulse1; }

    if (!pulseMessage.onoff)
    {
        stop_notes(pulseMessage.channel);
        lastMessage->timer = -1;
        lastMessage->note  = -1;
    }
    else
    {
#if USE_VELOCITY

        if ((pulseMessage.timer != lastMessage->timer) || (pulseMessage.volume != lastMessage->volume))
        {
            frequency = pulse2frequency(pulseMessage.timer);
            shift_frequency(frequency, octaves_shift, semitones_shift);
            frequency2midi(frequency, note, bend);
            if (note != lastMessage->note) {stop_notes(pulseMessage.channel);}
#if USE_FINE_ADJUST
            if (bend != lastMessage->bend) {pitch_bend(pulseMessage.channel, bend);}
#endif
            if (note != lastMessage->note) {note_on(pulseMessage.channel, note, ((pulseMessage.volume << 3) | (pulseMessage.volume >> 1)));}

            lastMessage->timer = pulseMessage.timer;
            lastMessage->note  = note;
            lastMessage->bend  = bend;
        }

#else

        if (pulseMessage.timer != lastMessage->timer)
        {
            frequency = pulse2frequency(pulseMessage.timer);
            shift_frequency(frequency, octaves_shift, semitones_shift);
            frequency2midi(frequency, note, bend);
            if (note != lastMessage->note) {stop_notes(pulseMessage.channel);}

#if USE_VOLUME
            if (pulseMessage.volume != lastMessage->volume) { set_volume(pulseMessage.channel, ((pulseMessage.volume << 3) | (pulseMessage.volume >> 1))); }
#endif
#if USE_FINE_ADJUST            
            if (bend != lastMessage->bend) {pitch_bend(pulseMessage.channel, bend);}
#endif
            if (note != lastMessage->note) {note_on(pulseMessage.channel, note, 0xFF);}

            lastMessage->timer = pulseMessage.timer;
            lastMessage->note  = note;
            lastMessage->bend  = bend;
        }
#if USE_VOLUME
        else
        {
            set_volume(pulseMessage.channel, ((pulseMessage.volume << 3) | (pulseMessage.volume >> 1)));
        }
#endif

#endif
    }

    lastMessage->volume = pulseMessage.volume;
}

void play_triangle_message(TriangleBitField triangleMessage)
{
    print_triangle_message(triangleMessage);
    int note, bend;
    double frequency;

    if ((!triangleMessage.onoff) || (triangleMessage.timer < 2))
    {
        stop_notes(triangleMessage.channel);
        triangle.timer = -1;
        triangle.note  = -1;
    }
    else
    {
        frequency = triangle2frequency(triangleMessage.timer);
        shift_frequency(frequency, octaves_shift, semitones_shift);
        frequency2midi(frequency, note, bend);
        if (note != triangle.note) {stop_notes(triangleMessage.channel);}

#if USE_FINE_ADJUST            
        if (bend != triangle.bend) {pitch_bend(triangleMessage.channel, bend);}
#endif
        if (note != triangle.note) {note_on(triangleMessage.channel, note, 0xFF);}

        triangle.timer = triangleMessage.timer;
        triangle.note  = note;
        triangle.bend  = bend;
    }
}

void play_noise_message(NoiseBitField noiseMessage)
{
    print_noise_message(noiseMessage);
    int note, bend;

    if (!noiseMessage.onoff)
    {
        stop_notes(noiseMessage.channel);
        noise.period = -1;
        noise.note  = -1;
    }
    else
    {
#if USE_VELOCITY

        if ((noiseMessage.period != noise.period) || (noiseMessage.mode != noise.mode) || (noiseMessage.volume != noise.volume))
        {
            noise2midi(noiseMessage.mode, noiseMessage.period, noiseMessage.length, note, bend);
            if (note != noise.note) {stop_notes(noiseMessage.channel);}
#if USE_FINE_ADJUST
            if (bend != noise.bend) {pitch_bend(noiseMessage.channel, bend);}
#endif
            if ((note != noise.note) || (noiseMessage.volume != noise.volume)) {note_on(noiseMessage.channel, note, ((noiseMessage.volume << 3) | (noiseMessage.volume >> 1)));}

            noise.mode   = noiseMessage.mode;
            noise.period = noiseMessage.period;
            noise.note   = note;
            noise.bend   = bend;
        }

#else

        if ((noiseMessage.period != noise.period) || (noiseMessage.mode != noise.mode))
        {
            noise2midi(noiseMessage.mode, noiseMessage.period, noiseMessage.length, note, bend);
            if (note != noise.note) {stop_notes(noiseMessage.channel);}

#if USE_VOLUME
            if (noiseMessage.volume != noise.volume) { set_volume(noiseMessage.channel, ((noiseMessage.volume << 3) | (noiseMessage.volume >> 1))); }
#endif
#if USE_FINE_ADJUST            
            if (bend != noise.bend) {pitch_bend(noiseMessage.channel, bend);}
#endif
            if (note != noise.note) {note_on(noiseMessage.channel, note, 0xFF);}

            noise.mode   = noiseMessage.mode;
            noise.period = noiseMessage.period;
            noise.note   = note;
            noise.bend   = bend;
        }
#if USE_VOLUME
        else
        {
            set_volume(noiseMessage.channel, ((noiseMessage.volume << 3) | (noiseMessage.volume >> 1)));
        }
#endif

#endif
    }

    noise.volume = noiseMessage.volume;
}

void play_dmc_message(DMCBitField dmcMessage)
{
    print_dmc_message(dmcMessage);
    int note, bend;
}

void set_octave_shift(int8_t octaves)
{
    octaves_shift = octaves;
}

int8_t get_octave_shift()
{
    return octaves_shift;
}

void set_semitone_shift(int8_t semitones)
{
    semitones_shift = semitones;
}

int8_t get_semitone_shift()
{
    return semitones_shift;
}