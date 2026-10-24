# ============================================================
# APB GPIO - OpenROAD: routing and post-route checks
# ============================================================
set PDK_ROOT "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A"
set DESIGN_DIR "/home/vsduser/APB_GPIO_VLSI"
set LIBERTY "$PDK_ROOT/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
set SDC "$DESIGN_DIR/constraints/apb_gpio.sdc"
set RES "$DESIGN_DIR/physical_design/results"

read_db $RES/03_cts.odb
read_liberty $LIBERTY
read_sdc $SDC
set_propagated_clock [all_clocks]
set_wire_rc -signal -layer met2
set_wire_rc -clock  -layer met5

# Tie nets must be routed as signals
foreach net [[ord::get_db_block] getNets] {
    if {[lsearch -exact {zero_ one_} [$net getName]] >= 0} {
        $net setSigType SIGNAL
    }
}

# Global routing
set_routing_layers -signal met1-met5 -clock met1-met5
global_route -congestion_iterations 50
estimate_parasitics -global_routing

# Detailed routing
detailed_route -output_drc $RES/route_drc.rpt -verbose 1

# Fillers and post-route parasitics
filler_placement {sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8}
check_placement -verbose
estimate_parasitics -placement

puts "=============================================="
puts "Routing completed"
puts "=============================================="
check_antennas
report_clock_skew
report_checks -path_delay max -format full
report_checks -path_delay min -format full
report_design_area

write_db $RES/04_route.odb
write_def $RES/apb_gpio_final.def
write_verilog $RES/apb_gpio_final.v
puts "Saved 04_route.odb, apb_gpio_final.def, apb_gpio_final.v"
