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
