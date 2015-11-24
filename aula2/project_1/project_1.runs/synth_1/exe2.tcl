# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language VHDL [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib T:/fpga_rios/aula2/project_1/project_1.srcs/sources_1/new/exe2.vhd
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir T:/fpga_rios/aula2/project_1/project_1.cache/wt [current_project]
set_property parent.project_dir T:/fpga_rios/aula2/project_1 [current_project]
synth_design -top exe2 -part xc7a100tcsg324-1
write_checkpoint exe2.dcp
report_utilization -file exe2_utilization_synth.rpt -pb exe2_utilization_synth.pb
