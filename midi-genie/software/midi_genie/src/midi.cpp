#include "midi.h"

void reset_channels()
{
    for (u8 i=0; i<5; i++)
    {
        reset_notes_hard(i);
	    // pitch_bend(i, 8192);
    }
}
