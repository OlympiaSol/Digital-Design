onerror {quit -f}
vlib work
vlog -work work Exercise2.vo
vlog -work work Exercise2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Exercise2_vlg_vec_tst
vcd file -direction Exercise2.msim.vcd
vcd add -internal Exercise2_vlg_vec_tst/*
vcd add -internal Exercise2_vlg_vec_tst/i1/*
add wave /*
run -all
