# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Jan 03 19:19:30 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design luhn_top_module

create_clock -name "clk" -period 30.0 -waveform {0.0 15.0} [get_ports clk]
set_clock_transition -rise 0.3 [get_clocks clk]
set_clock_transition -fall 0.4 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ff/slbhb4]
set_clock_uncertainty -setup 1.5 [get_clocks clk]
set_clock_uncertainty -hold 0.8 [get_clocks clk]
