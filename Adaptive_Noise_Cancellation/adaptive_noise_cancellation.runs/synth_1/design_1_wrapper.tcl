# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config  -ruleid {1}  -id {VRFC 10-664}  -string {{ERROR: [VRFC 10-664] expression has 16 elements ; expected 24 [C:/Programming/Git/adaptive_noise_cancellation/adaptive_noise_cancellation.srcs/sources_1/new/lms_filter.vhd:52]}}  -suppress 
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.cache/wt [current_project]
set_property parent.project_path U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/IP_Repository [current_project]
set_property ip_output_repo u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_ZedboardOLED_0_0/src/charLib/charLib.coe
read_vhdl -library xil_defaultlib {
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/ADAU1761_interface.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/adau1761_configuraiton_data.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/adau1761_izedboard.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/clocking.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/i2c.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/i2s_data_interface.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/i3c2.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/hdl/audio_top.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/AudioInOut16_1.0/hdl/AudioInOut16_v1_0_S00_AXI.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/AudioInOut16_1.0/src/DualClockFIFO.vhdl
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/AudioInOut16_1.0/src/GrayCounter.vhdl
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/AudioInOut16_1.0/hdl/AudioInOut16_v1_0.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/imports/new/pmod_i2s.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/new/source_mux.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/new/filter_control.vhd
  U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
}
add_files U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1/design_1_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/design_1_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/design_1_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/design_1_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_nco_0_2/constraints/nco_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_filter_output_left_0/design_1_filter_output_left_0_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_filter_output_left_0/design_1_filter_output_left_0_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_filter_output_left_0/design_1_filter_output_left_0.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_3/design_1_axi_gpio_0_3.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_ZedboardOLED_0_0/src/charLib/charLib_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_board.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4.xdc]
set_property used_in_implementation false [get_files -all u:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0_1/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/constrs_1/imports/constraints/zed_audio.xdc
set_property used_in_implementation false [get_files U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/constrs_1/imports/constraints/zed_audio.xdc]

read_xdc U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/constrs_1/imports/zedboard_master_XDC_RevC_D_v3/zedboard_master_XDC_RevC_D_v3.xdc
set_property used_in_implementation false [get_files U:/ENSC_452/adaptive_noise_cancellation-master/adaptive_noise_cancellation-master/adaptive_noise_cancellation.srcs/constrs_1/imports/zedboard_master_XDC_RevC_D_v3/zedboard_master_XDC_RevC_D_v3.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
