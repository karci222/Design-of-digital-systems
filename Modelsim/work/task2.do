## ##############################################################
##
##	Title		: Compilation and simulation
##
##	Developers	: Jens Sparsø¸, Rasmus Bo Sørensen and Mathias Møller Bruhn
##
##	Revision	: 02203 fall 2017 v.5.0
##
## This script compiles the VHDL files in the project
## and starts the simulation
#################################################################

# The vlib command creates the work library

vlib work

# When the work library is already created the vlib command
# gives a warning, that is OK.

################################################################
# The order of the vcom statements is important, the hierachy
# should be compiled bottom-up.
# The top most entity should be compiled last.
# And the components that do not instantiate other components
# should be compiled first.
################################################################

vcom -quiet debounce_entity.vhd
vcom -quiet debounce_sim.vhd
vcom -quiet gcd.vhd
vcom -quiet gcd_top.vhd
vcom -quiet ../task1/env.vhd
vcom -quiet ../task1/test.vhd

# The -quiet option disables output from the vcom command
# that is not error or warning messages.

################################################################
# The vsim command starts the testbench design unit and runs
# the sim.do to set up the simulation

onbreak {resume}
vsim -do sim.do -novopt testbench

################################################################
