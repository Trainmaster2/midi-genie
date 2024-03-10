#pragma once

#ifndef CONFIG_H
#define CONFIG_H

#define APU_DEBUG       1 // Print messages received from APU
#define USE_VELOCITY    0 // Use velocity instead of volume
#define USE_HARD_RESET  0 // Use hard reset to silence previous notes
#define USE_FINE_ADJUST 1 // Use pitch bend for more accurate frequency
#define USE_VOLUME      1 // Send volume control messages
#define ESTIMATE_NOISE  1 // Estimate Mode 1 frequency

#endif
