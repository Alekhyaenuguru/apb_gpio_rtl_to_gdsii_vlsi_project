# ============================================================
# APB GPIO - OpenROAD: CTS and timing repair
# ============================================================
set PDK_ROOT "/home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A"
set DESIGN_DIR "/home/vsduser/APB_GPIO_VLSI"
set LIBERTY "$PDK_ROOT/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
set SDC "$DESIGN_DIR/constraints/apb_gpio.sdc"

read_db $DESIGN_DIR/physical_design/results/02_place.odb
read_liberty $LIBERTY
read_sdc $SDC

set_wire_rc -signal -layer met2
set_wire_rc -clock  -layer met5
estimate_parasitics -placement

# Clock tree
clock_tree_synthesis \
    -root_buf sky130_fd_sc_hd__clkbuf_16 \
    -buf_list {sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_8}
set_propagated_clock [all_clocks]
detailed_placement
estimate_parasitics -placement

# Timing repair
repair_timing -setup -hold
detailed_placement
check_placement -verbose

puts "=============================================="
puts "CTS completed"
puts "=============================================="
report_clock_skew
report_checks -path_delay max -format full
report_checks -path_delay min -format full
report_design_area

write_db $DESIGN_DIR/physical_design/results/03_cts.odb
puts "Saved physical_design/results/03_cts.odb"
