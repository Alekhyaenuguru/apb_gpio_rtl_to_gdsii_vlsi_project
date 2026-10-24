set PDK $::env(PDK)
set D /home/vsduser/APB_GPIO_VLSI
set L $PDK/libs.ref/sky130_fd_sc_hd
gds read $L/gds/sky130_fd_sc_hd.gds
lef read $L/techlef/sky130_fd_sc_hd__nom.tlef
lef read $L/lef/sky130_fd_sc_hd.lef
def read $D/physical_design/results/apb_gpio_final.def
load apb_gpio
select top cell
gds write $D/physical_design/gds/apb_gpio.gds
puts "GDS written"
drc catchup
drc check
puts "DRC count:"
drc count total
quit -noprompt
