#include "apu.h"
#include "calc.h"
#include "midi.h"

int connect_apu_interrupts(XIntc *InterruptController)
{
    int Status;

	// Connect the NES reset interrupt handler
    Status = XIntc_Connect(InterruptController, NES_RST_INT_ID, (XInterruptHandler)nes_reset_handler, (void*)0);
    if (Status != XST_SUCCESS) return XST_FAILURE;

	// Connect the APU message interrupt handler
    Status = XIntc_Connect(InterruptController, APU_MSG_INT_ID, (XInterruptHandler)apu_message_handler, (void*)0);
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
}

void apu_message_handler(void* CallbackRef)
{
    APUBitField apuMessage;
    read_apu_message(apuMessage);
    print_note_message(apuMessage.note);
    play_note_message(apuMessage.note);
}

void play_note_message(NoteBitField noteMessage)
{
    int note, bend;
    switch (noteMessage.channel)
    {
        case 0:
        case 1:
            reset_notes_soft(noteMessage.channel);
            if (noteMessage.onoff && noteMessage.timer >= 8)
            {
                pulse2midi(noteMessage.timer, note, bend);
                pitch_bend(noteMessage.channel, bend);
                note_on(noteMessage.channel, note, 0xFF);
            }
            break;
        case 2:
            reset_notes_soft(noteMessage.channel);
            if (noteMessage.onoff)
            {
                triangle2midi(noteMessage.timer, note, bend);
                pitch_bend(noteMessage.channel, bend);
                note_on(noteMessage.channel, note, 0xFF);
            }
            break;
    }
}
