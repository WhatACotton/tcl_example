set top_module_name top
set outputDir ./synth_tmp
file mkdir $outputDir
set_property top tb [current_fileset -simset]
set_property top top [current_fileset]

set_part xc7z020clg400-1
read_verilog ./src/top.v
read_verilog ./src/tb.v
read_xdc ./src/pin.xdc

export_simulation -force -simulator xsim
