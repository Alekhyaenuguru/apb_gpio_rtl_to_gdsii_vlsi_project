set PDK_ROOT "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A"
set DESIGN_DIR "/home/vsduser/APB_GPIO_VLSI"
set P $::env(PERIOD)
read_db $DESIGN_DIR/physical_design/results/04_route.odb
read_liberty $PDK_ROOT/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_n40C_1v28.lib
read_sdc /tmp/sdc_$P.sdc
set_propagated_clock [all_clocks]
set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5
estimate_parasitics -global_routing
puts "PERIOD $P"
report_worst_slack -max
report_tns
