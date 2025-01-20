create_clock -name clk -period 30 -waveform {0 15} [get_ports clk]
set_clock_uncertainty -setup 1.5 [get_clocks clk]
set_clock_uncertainty -hold 0.8 [get_clocks clk]
set_clock_transition -rise 0.3 [get_clocks clk]
set_clock_transition -fall 0.4 [get_clocks clk]

