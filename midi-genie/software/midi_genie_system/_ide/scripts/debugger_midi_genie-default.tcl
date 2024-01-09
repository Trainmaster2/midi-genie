# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie_system/_ide/scripts/debugger_midi_genie-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie_system/_ide/scripts/debugger_midi_genie-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328B7E907A" && level==0 && jtag_device_ctx=="jsn-Cmod A7 - 35T-210328B7E907A-0362d093-0"}
fpga -file /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie_hw/export/midi_genie_hw/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie/Debug/midi_genie.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
