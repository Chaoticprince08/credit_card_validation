##Required for Encounter 11.1
set lib /home/vlsi18/Desktop/sclpdk_new/SCLPDK_V3.0_KIT/scl180
create_library_set -name my_min_library_set -timing [list $lib/stdcell/fs120/4M1IL/liberty/lib_flow_ff/tsl18fs120_scl_ff.lib $lib/iopad/cio250/4M1L/liberty/tsl18cio250_min.lib] 

create_library_set -name my_max_library_set -timing [list $lib/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib $lib/iopad/cio250/4M1L/liberty/tsl18cio250_max.lib]

create_library_set -name lib_180nm -timing [list $lib/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib $lib/iopad/cio250/4M1L/liberty/tsl18cio250_min.lib]
 
create_constraint_mode -name my_constraint_mode \
	-sdc_files /home/vlsi18/Desktop/24EC4205/project1/project1/luhn_corrected/Synthesis/luhn_sdc_generated.sdc
create_rc_corner -name my_rc_corner_worst\
	-T 				   25

create_delay_corner -name my_delay_corner_max \
	-library_set my_max_library_set \
	-rc_corner   my_rc_corner_worst

create_delay_corner -name my_delay_corner_min \
	-library_set my_min_library_set \
	-rc_corner   my_rc_corner_worst

create_analysis_view -name my_analysis_view_setup \
	-constraint_mode my_constraint_mode \
	-delay_corner    my_delay_corner_max
 
create_analysis_view -name my_analysis_view_hold \
	-constraint_mode my_constraint_mode \
	-delay_corner    my_delay_corner_min

set_analysis_view \
	-setup [list my_analysis_view_setup] \
	-hold  [list my_analysis_view_hold]
