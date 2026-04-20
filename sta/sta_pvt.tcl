# List of PVT library files
set list_of_lib_files(1) "sky130_fd_sc_hd__tt_025C_1v80.lib"
set list_of_lib_files(2) "sky130_fd_sc_hd__ff_100C_1v65.lib"
set list_of_lib_files(3) "sky130_fd_sc_hd__ff_100C_1v95.lib"
set list_of_lib_files(4) "sky130_fd_sc_hd__ff_n40C_1v56.lib"
set list_of_lib_files(5) "sky130_fd_sc_hd__ff_n40C_1v65.lib"
set list_of_lib_files(6) "sky130_fd_sc_hd__ff_n40C_1v76.lib"
set list_of_lib_files(7) "sky130_fd_sc_hd__ss_100C_1v40.lib"
set list_of_lib_files(8) "sky130_fd_sc_hd__ss_100C_1v60.lib"
set list_of_lib_files(9) "sky130_fd_sc_hd__ss_n40C_1v28.lib"
set list_of_lib_files(10) "sky130_fd_sc_hd__ss_n40C_1v35.lib"
set list_of_lib_files(11) "sky130_fd_sc_hd__ss_n40C_1v40.lib"
set list_of_lib_files(12) "sky130_fd_sc_hd__ss_n40C_1v44.lib"
set list_of_lib_files(13) "sky130_fd_sc_hd__ss_n40C_1v76.lib"

# Loop through each PVT corner
for {set i 1} {$i <= [array size list_of_lib_files]} {incr i} {

    # Clear previous design and libraries
    #reset_design

    # Read Liberty file (both min and max)
    read_liberty -max ~/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/$list_of_lib_files($i)
    read_liberty -min ~/Desktop/work/tools/openlane_working_dir/pdks/skywater-pdk/libraries/sky130_fd_sc_hd/latest/timing/$list_of_lib_files($i)

    # Read your synthesized netlist
    read_verilog ~/madan/synthesis/ripple_counter.synth.v

    # Link your design
    link_design ripple_counter

    # Read your SDC
    read_sdc ~/madan/sta/ripple_counter_synthesis.sdc

    # Optional sanity check
    check_setup -verbose

    # Create output directory if not exists
    exec mkdir -p ~/madan/sta/STA_OUTPUT

    # Full timing report
    report_checks -path_delay min_max \
        -fields {nets cap slew input_pins fanout} \
        -digits 4 \
        > ~/madan/sta/STA_OUTPUT/min_max_$list_of_lib_files($i).txt

    # Worst setup slack
    exec echo "$list_of_lib_files($i)" >> ~/madan/sta/STA_OUTPUT/sta_worst_max_slack.txt
    report_worst_slack -max -digits 4 >> ~/madan/sta/STA_OUTPUT/sta_worst_max_slack.txt

    # Worst hold slack
    exec echo "$list_of_lib_files($i)" >> ~/madan/sta/STA_OUTPUT/sta_worst_min_slack.txt
    report_worst_slack -min -digits 4 >> ~/madan/sta/STA_OUTPUT/sta_worst_min_slack.txt

    # Total Negative Slack
    exec echo "$list_of_lib_files($i)" >> ~/madan/sta/STA_OUTPUT/sta_tns.txt
    report_tns -digits 4 >> ~/madan/sta/STA_OUTPUT/sta_tns.txt

    # Worst Negative Slack
    exec echo "$list_of_lib_files($i)" >> ~/madan/sta/STA_OUTPUT/sta_wns.txt
    report_wns -digits 4 >> ~/madan/sta/STA_OUTPUT/sta_wns.txt
}
