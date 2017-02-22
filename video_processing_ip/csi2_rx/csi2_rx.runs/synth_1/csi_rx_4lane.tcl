# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.cache/wt [current_project]
set_property parent.project_path C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_output_repo c:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_clock_det.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_word_align.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_hs_clk_phy.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_idelayctrl_gen.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_line_buffer.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_hs_lane_phy.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_byte_align.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_hdr_ecc.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/video-misc/video_timing_ctrl.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_packet_handler.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_4_lane_link.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_video_output.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_10bit_unpack.vhd
  C:/Users/minit/git/Zybo-Open-Source-Video-IP-Toolbox/video_processing_ip/csi2_rx/csi2_rx.srcs/sources_1/imports/mipi-csi-rx/csi_rx_top.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top csi_rx_4lane -part xc7z010clg400-1


write_checkpoint -force -noxdef csi_rx_4lane.dcp

catch { report_utilization -file csi_rx_4lane_utilization_synth.rpt -pb csi_rx_4lane_utilization_synth.pb }
