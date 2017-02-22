# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.cache/wt [current_project]
set_property parent.project_path C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/Users/minit/git/zybo-toolbox
  c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/general_ip
  c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip
} [current_project]
set_property ip_cache_permissions disable [current_project]
read_vhdl -library xil_defaultlib C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/hdl/system_wrapper.vhd
add_files C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/system_ooc.xdc]
set_property is_locked true [get_files C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/sources_1/bd/system/system.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/constraints_1/ZYBO_Master.xdc
set_property used_in_implementation false [get_files C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_examples/video_passthrough_vga/video_passthrough_vga.srcs/constraints_1/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top system_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef system_wrapper.dcp

catch { report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb }
