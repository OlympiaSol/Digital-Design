transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Lab8.vho}

vcom -93 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/simulation/modelsim/lab8_tb.vhd}

vsim -t 1ps -L cycloneii -L gate_work -L work -voptargs="+acc"  lab8_tb

add wave *
view structure
view signals
run -all
