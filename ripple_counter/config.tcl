
# Design
set ::env(DESIGN_NAME) "ripple_counter"

set ::env(VERILOG_FILES) "./designs/ripple_counter/src/ripple_counter.v"
set ::env(SDC_FILE) "./designs/ripple_counter/src/ripple_counter.sdc"

set ::env(CLOCK_PERIOD) "5.000"
set ::env(CLOCK_PORT) "clk"

# added later on 11/2025
set ::env(CTS_SQR_CAP) "0.024" ; # Square capacitance in pF/µm²
set ::env(CTS_SQR_RES) "0.075" ; # Square resistance in kΩ/µm²


set ::env(CLOCK_NET) $::env(CLOCK_PORT)


#set ::env(LIB_SYNTH) "$::env(OPENLANE_ROOT)/designs/ripple_counter/src/sky130_fd_sc_hd__typical.lib"
#set ::env(LIB_FASTEST) "$::env(OPENLANE_ROOT)/designs/ripple_counter/src/sky130_fd_sc_hd__fast.lib"
#set ::env(LIB_SLOWEST) "$::env(OPENLANE_ROOT)/designs/ripple_counter/src/sky130_fd_sc_hd__slow.lib"
#set ::env(LIB_TYPICAL) "$::env(OPENLANE_ROOT)/designs/ripple_counter/src/sky130_fd_sc_hd__typical.lib"

#set ::env(EXTRA_LEFS) [glob $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
