set LIBDIR "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A/libs.ref/sky130_fd_sc_hd/lib"

set corner $::env(CORNER)
set lib_file "$LIBDIR/sky130_fd_sc_hd__${corner}.lib"

puts "=============================================="
puts "APB GPIO STA"
puts "Corner: $corner"
puts "Library: $lib_file"
puts "=============================================="

read_liberty $lib_file

read_verilog synthesis/apb_gpio_synth.v

link_design apb_gpio

read_sdc constraints/apb_gpio.sdc

report_checks \
    -path_delay max \
    -fields {slew capacitance input_pins} \
    -digits 3 \
    > "reports/sta_${corner}_setup.rpt"

report_checks \
    -path_delay min \
    -fields {slew capacitance input_pins} \
    -digits 3 \
    > "reports/sta_${corner}_hold.rpt"

report_worst_slack -max \
    > "reports/sta_${corner}_worst_setup.rpt"

report_worst_slack -min \
    > "reports/sta_${corner}_worst_hold.rpt"

puts "=============================================="
puts "Completed: $corner"
puts "=============================================="
