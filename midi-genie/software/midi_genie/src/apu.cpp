#include "apu.h"
#include "calc.h"
#include "midi.h"

LastPulse pulse1 = {};
LastPulse pulse2 = {};
LastTriangle triangle = {};

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
    }
    // XIntc_Acknowledge((XIntc*)CallbackRef, APU_MSG_INT_ID);
}

void play_pulse_message(PulseBitField pulseMessage)
{
    print_pulse_message(pulseMessage);
    int note, bend;
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
            pulse2midi(pulseMessage.timer, note, bend);
            if (note != lastMessage->note) {stop_notes(pulseMessage.channel);}
#if USE_FINE_ADJUST
            if (bend != lastMessage->bend) {pitch_bend(pulseMessage.channel, bend);}
#endif
            if (note != lastMessage->note) {note_on(pulseMessage.channel, note, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1));}

            lastMessage->timer = pulseMessage.timer;
            lastMessage->note  = note;
            lastMessage->bend  = bend;
        }

#else

        if (pulseMessage.timer != lastMessage->timer)
        {
            pulse2midi(pulseMessage.timer, note, bend);
            if (note != lastMessage->note) {stop_notes(pulseMessage.channel);}

#if USE_VOLUME
            if (pulseMessage.volume != lastMessage->volume) { set_volume(pulseMessage.channel, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1)); }
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
            set_volume(pulseMessage.channel, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1));
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

    if ((!triangleMessage.onoff) || (triangleMessage.timer < 2))
    {
        stop_notes(triangleMessage.channel);
        triangle.timer = -1;
        triangle.note  = -1;
    }
    else
    {
        triangle2midi(triangleMessage.timer, note, bend);
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