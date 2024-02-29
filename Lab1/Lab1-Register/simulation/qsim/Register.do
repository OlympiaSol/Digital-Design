onerror {quit -f}
vlib work
vlog -work work Register.vo
vlog -work work Register.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.REG4_vlg_vec_tst
vcd file -direction Register.msim.vcd
vcd add -internal REG4_vlg_vec_tst/*
vcd add -internal REG4_vlg_vec_tst/i1/*
add wave /*
run -all
