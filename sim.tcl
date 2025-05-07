set top_module_name top
set_property top tb [current_fileset -simset]

read_verilog ./src/top.v
read_verilog ./src/tb.v

export_simulation -force -simulator xsim
