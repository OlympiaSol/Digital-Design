onerror {quit -f}
vlib work
vlog -work work Intro.vo
vlog -work work Intro.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Intro_vlg_vec_tst
vcd file -direction Intro.msim.vcd
vcd add -internal Intro_vlg_vec_tst/*
vcd add -internal Intro_vlg_vec_tst/i1/*
add wave /*
run -all
