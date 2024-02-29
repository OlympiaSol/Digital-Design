onerror {quit -f}
vlib work
vlog -work work BasicCircuits.vo
vlog -work work BasicCircuits.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab4_vlg_vec_tst
vcd file -direction BasicCircuits.msim.vcd
vcd add -internal Lab4_vlg_vec_tst/*
vcd add -internal Lab4_vlg_vec_tst/i1/*
add wave /*
run -all
