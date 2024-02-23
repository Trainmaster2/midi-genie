#include "midi.h"

void reset_channels()
{
    // Pulse 1
    reset_notes_hard(0);
    pitch_bend(0, 8192);
    set_volume(0, 0x7F);

    // Pulse 2
    reset_notes_hard(1);
    pitch_bend(1, 8192);
    set_volume(1, 0x7F);

    // Triangle
    reset_notes_hard(2);
    pitch_bend(2, 8192);
    set_volume(2, 0x3F);
}
