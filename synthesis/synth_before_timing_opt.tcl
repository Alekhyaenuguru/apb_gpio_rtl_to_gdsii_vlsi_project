# ============================================================
# APB GPIO - Yosys Synthesis Script
# Technology: Sky130 HD
# Corner: TT, 25C, 1.80V
# ============================================================

read_verilog -sv rtl/apb_gpio.sv
hierarchy -top apb_gpio

proc
opt
fsm
opt
memory
opt

techmap

dfflibmap -liberty \
    /home/vsduser/VLSI/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

abc -liberty \
    /home/vsduser/VLSI/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

opt_clean

write_verilog -noattr synthesis/apb_gpio_synth.v
stat
