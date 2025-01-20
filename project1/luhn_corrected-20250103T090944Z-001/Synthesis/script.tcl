set_attr init_lib_search_path /home/vlsi24/scl_pdk/stdlib/fs120/liberty/lib_flow_ff
set_attr init_hdl_search_path /home/vlsi24/Desktop/EC1062DICDlab/project1/luhn_corrected-20250103T090944Z-001/luhn_corrected
set_attr library tsl18fs120_scl_ff.lib

read_hdl [list luhn_topmodule.v luhn_datapath_corrected.v luhn_controller_corrected.v]
elaborate

read_sdc /home/vlsi24/Desktop/EC1062DICDlab/project1/luhn_corrected-20250103T090944Z-001/Synthesis/constraints.sdc

set_attribute syn_generic_effort high
set_attribute syn_map_effort high
set_attribute syn_opt_effort high

syn_generic
syn_map
syn_opt
#syn_opt -physical is obsolete in the new version

write_hdl > luhn_netlist.v
write_sdc >luhn_sdc_generated.sdc
report_timing>timing.rep
report_power>power.rep
new_report_area -physical > area.rep

report_timing -early > luhn_hold_timing.rep

