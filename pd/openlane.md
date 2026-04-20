## Openlane invoke:

```
cd ~/Desktop/work/tools/openlane_working_dir/openlane
```

```
alias docker='docker run -it -v $(pwd):/openLANE_flow -v $PDK_ROOT:$PDK_ROOT -e PDK_ROOT=$PDK_ROOT -u $(id -u $USER):$(id -g $USER) efabless/openlane:v0.21'
```

```
docker
```

```
./flow.tcl -interactive
```

```
package require openlane 0.9
```


## Physical design:

```
prep -design picorv32a
```

Synthesis:
```
run_synthesis
```

synthesis file at `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/28-10_10-47/results/synthesis/`


## Floorplan:
```
run_floorplan
```

the config file at `~/Desktop/work/tools/openlane_working_dir/openlane/configuration/floorplan.tcl`

the overwriting config file at `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/sky130A_sky130_fd_sc_hd_config.tcl`

the def file is at `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/29-10_00-31/results/floorplan/picorv32a.floorplan.def`

layout:

```
magic -T ~/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.floorplan.def &
```

## placement

```
run_placement
```

layout:
```
magic -T ~/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.placement.def &
```

## STA

```
cd ~/Desktop/work/tools/openlane_working_dir/openlane/
sta pre_sta.conf
```

## CTS 

```tcl
# If any variable conflict occurs, remove the CTS library environment variable
unset ::env(LIB_CTS)

# Once placement is done, execute clock tree synthesis
run_cts
```

## Routing

```
run_routing
```

layout:

```tcl
# Navigate to the directory containing the routed DEF file
cd ~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/11-11_16-13/results/routing

# Launch Magic and load the routed DEF and technology LEF
magic -T ~/Desktop/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.def &
```

## Post-Routing Parasitic Extraction (SPEF Extraction (Standard Parasitic Exchange Format) )

```tcl
# Navigate to the directory containing the SPEF extractor
cd ~/Desktop/work/tools/openlane_working_dir/openlane/scripts/spef_extractor

# Execute the Python SPEF extraction script using merged LEF and routed DEF
python3 main.py -l ~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/11-11_16-13/tmp/merged.lef -d ~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/11-11_16-13/results/routing/picorv32a.def
```

generated .spef file inside: `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/11-11_16-13/results/routing/`


## Post-Routing OpenSTA Timing Analysis Using SPEF

```tcl
# Launch OpenROAD shell for timing analysis
openroad

# Load the technology and cell LEFs (used for layout geometry and standard cells)
read_lef /openLANE_flow/designs/picorv32a/runs/11-11_16-13/tmp/merged.lef

# Load the final routed DEF (includes interconnections and routing information)
read_def /openLANE_flow/designs/picorv32a/runs/11-11_16-13/results/routing/picorv32a.def

# Save OpenROAD database for reference or reuse
write_db pico_route.db

# Optionally reload the saved database
read_db pico_route.db

# Load the Verilog netlist generated after synthesis
read_verilog /openLANE_flow/designs/picorv32a/runs/11-11_16-13/results/synthesis/picorv32a.synthesis_preroute.v

# Load the complete Liberty timing models
read_liberty $::env(LIB_SYNTH_COMPLETE)

# Link the design’s top-level module with its corresponding libraries
link_design picorv32a

# Load the custom SDC file containing clock and timing constraints
read_sdc /openLANE_flow/designs/picorv32a/src/my_base.sdc

# Mark all defined clocks as propagated to include clock tree delays
set_propagated_clock [all_clocks]

# Load the extracted parasitic data for accurate delay calculations
read_spef /openLANE_flow/designs/picorv32a/runs/11-11_16-13/results/routing/picorv32a.spef

# Generate a timing report showing both setup and hold paths
report_checks -path_delay min_max -fields {slew trans net cap input_pins} -format full_clock_expanded -digits 4
```
