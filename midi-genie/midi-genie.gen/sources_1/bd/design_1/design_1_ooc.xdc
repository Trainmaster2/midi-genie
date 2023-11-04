################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name sys_clock -period 83.333 [get_ports sys_clock]
create_clock -name nes_system_clk -period 46.561 [get_ports nes_system_clk]
create_clock -name nes_m2 -period 558.730 [get_ports nes_m2]

################################################################################