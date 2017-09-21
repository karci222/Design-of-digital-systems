
## ##############################################################
##
##	Title		: Compilation and simulation
##
##	Developers	: Jens Sparsø and Rasmus Bo Sørensen
##
##	Revision	: 02203 fall 2012 v.2
##
## Script to set up the simulation of the project
#################################################################

# add wave will add the waves to the wave view
# To change the name of the waves in the wave view use the -label option
# Example:
# add wave -label clk /testbench/clk
add wave /testbench/clk
add wave /testbench/reset
add wave /testbench/AB
add wave /testbench/req
add wave /testbench/C
add wave /testbench/ack
add wave /testbench/GCD_module/u2/state 
add wave /testbench/GCD_module/u2/state
add wave /testbench/environment/current_state 
add wave /testbench/environment/next_state
add wave /testbench/GCD_module/u2/next_reg_a
add wave /testbench/GCD_module/u2/reg_a
add wave /testbench/GCD_module/u2/next_reg_b
add wave /testbench/GCD_module/u2/reg_b

run 5000ns

# WaveRestoreZoom changes the wave view to show the simulated time
WaveRestoreZoom {0 ns} {5000 ns}
