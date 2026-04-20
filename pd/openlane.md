Openlane invoke:

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


Physical design:

```
prep -design picorv32a
```

Synthesis:
```
run_synthesis
```

synthesis file at `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/28-10_10-47/results/synthesis/`


Floorplan:
```
run_floorplan
```

the def file is at `~/Desktop/work/tools/openlane_working_dir/openlane/designs/picorv32a/runs/29-10_00-31/results/floorplan/picorv32a.floorplan.def`

