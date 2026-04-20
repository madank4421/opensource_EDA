yosys
read_liberty -lib /home/vsduser/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog <filename.v>
synth -top <module name>
opt_clean -purge
abc -liberty /home/vsduser/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/sky130_fd_sc_hd__tt_025C_1v80.lib
show
flatten
write_verilog -noattr <filename.v>
