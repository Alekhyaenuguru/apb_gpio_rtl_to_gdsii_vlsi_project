# ============================================================
# APB GPIO - OpenROAD Physical Design Configuration
# Technology: Sky130 HD
# ============================================================

set ::env(DESIGN_NAME) apb_gpio

set ::env(DESIGN_DIR) /home/vsduser/APB_GPIO_VLSI
set ::env(PDK_ROOT) /home/vsduser/VLSI/ciel-pdk/ciel/sky130/versions/1e3554706ddbb2529193bdabbc7128296f3cb44a/sky130A

# Technology files
set ::env(TECH_LEF) \
    $::env(PDK_ROOT)/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef

set ::env(CELL_LEF) \
    $::env(PDK_ROOT)/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef

# Best synthesis checkpoint
set ::env(NETLIST) \
    $::env(DESIGN_DIR)/synthesis/apb_gpio_synth_D1000.v

# Timing library used initially for physical implementation
set ::env(LIBERTY) \
    $::env(PDK_ROOT)/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Constraints
set ::env(SDC) \
    $::env(DESIGN_DIR)/constraints/apb_gpio.sdc
