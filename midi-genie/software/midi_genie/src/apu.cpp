#include "apu.h"
#include "calc.h"
#include "midi.h"

PulseBitField pulse1 = {};
PulseBitField pulse2 = {};

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
    }
    // XIntc_Acknowledge((XIntc*)CallbackRef, APU_MSG_INT_ID);
}

void play_pulse_message(PulseBitField pulseMessage)
{
    print_pulse_message(pulseMessage);
    int note, bend;
    PulseBitField* lastMessage;

    if (pulseMessage.channel) { lastMessage = &pulse2; }
    else { lastMessage = &pulse1; }

    if (!pulseMessage.onoff || pulseMessage.timer < 8)
    {
        reset_notes_soft(pulseMessage.channel);
    }
    else
    {
#if USE_VELOCITY

        if ((pulseMessage.timer != lastMessage->timer) || (pulseMessage.volume != lastMessage->volume))
        {
            pulse2midi(pulseMessage.timer, note, bend);
            stop_notes(pulseMessage.channel);
#if USE_FINE_ADJUST            
            pitch_bend(pulseMessage.channel, bend);
#endif
            note_on(pulseMessage.channel, note, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1));
        }

#else

        if (pulseMessage.timer != lastMessage->timer)
        {
            pulse2midi(pulseMessage.timer, note, bend);
            stop_notes(pulseMessage.channel);
            if (pulseMessage.volume != lastMessage->volume) { set_volume(pulseMessage.channel, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1)); }
#if USE_FINE_ADJUST            
            pitch_bend(pulseMessage.channel, bend);
#endif
            note_on(pulseMessage.channel, note, 0xFF);
        }
        else
        {
            set_volume(pulseMessage.channel, (pulseMessage.volume << 3) | (pulseMessage.volume >> 1));
        }

#endif
    }

    *lastMessage = pulseMessage;
}
