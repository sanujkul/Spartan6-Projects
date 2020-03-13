
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Single-Dice-Game -dir "C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/Single-Dice-Game/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "FSM.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {RNG.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {display.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {comaparor3bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {FSM.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top FSM $srcset
add_files [list {FSM.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
