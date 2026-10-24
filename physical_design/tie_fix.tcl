# Add a tie-low driver for the undriven zero_ net
set block [ord::get_db_block]
set zero [$block findNet zero_]
if {$zero ne "NULL"} {
    $zero setSigType SIGNAL
    set master [[ord::get_db] findMaster sky130_fd_sc_hd__conb_1]
    set tie [odb::dbInst_create $block $master TIE_ZERO]
    [$tie findITerm LO] connect $zero
    puts "Added TIE_ZERO driving zero_"
}
