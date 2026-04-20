# Load Liberty Libraries (standard cell + IPs)
read_liberty -min ~/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_025C_1v80.lib
read_liberty -max ~/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_025C_1v80.lib

# Read Synthesized Netlist
read_verilog ~/work/synthesis/ripple_counter.synth.v

# Link the Top-Level Design
link_design ripple_counter

# Apply SDC Constraints
read_sdc ~/work/sta/ripple_counter_synthesis.sdc

# Generate Timing Report
report_checks
