
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name PWM -dir "C:/Users/Sanuj Kulshrestha/Documents/Xilinx-Workspace/PWM/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "pwm.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {pwm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top pwm $srcset
add_files [list {pwm.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
