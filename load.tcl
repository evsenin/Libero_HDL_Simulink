# Microsemi Tcl Script
# libero

set build_dir ./build

# Remove any existing project first.
#
puts "Run delete existing project ..."
eval file delete -force "$build_dir";

puts "Run new_project ..."
new_project -location "$build_dir" -name {ProjectName} -project_description {ProjectDescription} \
	-block_mode 0 \
	-standalone_peripheral_initialization 0 \
	-instantiate_in_smartdesign 1 \
	-ondemand_build_dh 1 \
	-use_relative_path 0 \
	-linked_files_root_dir_env {} \
	-hdl {VERILOG} \
	-family {PolarFire} \
	-die {MPF300T} \
	-package {FCG1152} \
	-speed {STD} \
	-die_voltage {1.0} \
	-part_range {EXT} \
	-adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
	-adv_options {RESTRICTPROBEPINS:1} \
	-adv_options {RESERVEMIGRATIONPINS:0} \
	-adv_options {RESTRICTSPIPINS:0} \
	-adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
	-adv_options {TEMPR:EXT} \
	-adv_options {VCCI_1.2_VOLTR:EXT} \
	-adv_options {VCCI_1.5_VOLTR:EXT} \
	-adv_options {VCCI_1.8_VOLTR:EXT} \
	-adv_options {VCCI_2.5_VOLTR:EXT} \
	-adv_options {VCCI_3.3_VOLTR:EXT} \
	-adv_options {VOLTR:EXT};

puts "Run download_latest_cores ..."
download_latest_cores

puts "Run import hdl files and cores ..."
cd main
source main_recursive.tcl
cd ../

puts "Run import sfc files ..."
import_files -sdc {constraint/main.sdc}
import_files -io_pdc {constraint/main.pdc}

puts "Run set root and save ..."
set_root -module {main::work}
save_smartdesign -sd_name {main}
save_project

puts "Run derive_constraints_sdc  ..."
if {[catch {derive_constraints_sdc}] } {
	puts "Run derive_constraints_sdc  FAILED \n"
   } else {
	puts "Run derive_constraints_sdc  PASSED \n"
   };


save_project
