create_clock -name PCLK -period 18.0 [get_ports PCLK]

set_input_delay 2.0 -clock PCLK [get_ports {PSEL PENABLE PWRITE PADDR PWDATA gpio_in}]

set_output_delay 2.0 -clock PCLK [get_ports {PRDATA PREADY PSLVERR gpio_out gpio_oe}]

set_clock_uncertainty 0.2 [get_clocks PCLK]
