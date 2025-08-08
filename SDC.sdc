#sdc timing constrant

create_clock -period 20 -name clk -waveform {0 10} [get_ports clk]

set_input_delay 0 -clock clk -rise {in}

set_output_delay 0 -clock clk -rise {out}







