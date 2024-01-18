# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie_hw/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/trainmaster2/Documents/midi-genie/midi-genie/software/midi_genie_hw/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {midi_genie_hw}\
-hw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}\
-out {/home/trainmaster2/Documents/midi-genie/midi-genie/software}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {midi_genie_hw}
platform generate -quick
platform generate
platform generate
platform generate
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate
platform generate
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform active {midi_genie_hw}
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/trainmaster2/Documents/midi-genie/midi-genie/design_1_wrapper.xsa}
platform generate -domains 
