MIDI Genie
==========
The MIDI Genie is an auxiliary APU for the Nintendo Entertainment System. The MIDI Genie is an add-on device that translates the audio output into MIDI. A custom PCB acts as a cartridge riser and holds the FPGA, level shifters, and other electronics to sniff NES bus traffic, process the data, and output MIDI. A USB serial command line offers control over the device's operations, including shifting the output by individual semitones and whole octaves.

The device sits between the cartridge and the console, much like the classic Game Genie devices. From there, it listens for instructions from the CPU to the built-in audio processor. Based on said instructions, the function of the APU is emulated, and live MIDI signals are generated to mimic the sounds the real APU would generate.

-----

This repo contains the KiCad project, Vivado project, and Vitis project for the device.

The Noise channel frequency calculations could use some work, and the DMC has yet to be researched or implemented.

More in-depth documentation will likely come at a future date.