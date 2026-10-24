read_liberty ~/VLSI/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog synthesis/apb_gpio_synth.v

link_design apb_gpio

read_sdc constraints/apb_gpio.sdc

report_checks -path_delay max -fields {slew capacitance input_pins} -digits 3 > reports/sta_tt_setup.rpt
report_checks -path_delay min -fields {slew capacitance input_pins} -digits 3 > reports/sta_tt_hold.rpt

report_worst_slack -max > reports/sta_tt_worst_setup.rpt
report_worst_slack -min > reports/sta_tt_worst_hold.rpt
