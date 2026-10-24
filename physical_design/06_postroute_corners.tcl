set PDK_ROOT "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A"
set DESIGN_DIR "/home/vsduser/APB_GPIO_VLSI"
set C $::env(CORNER)
read_db $DESIGN_DIR/physical_design/results/04_route.odb
read_liberty $PDK_ROOT/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__$C.lib
read_sdc $DESIGN_DIR/constraints/apb_gpio.sdc
set_propagated_clock [all_clocks]
set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5
estimate_parasitics -global_routing
puts "CORNER $C"
report_worst_slack -max
report_worst_slack -min
report_tns
