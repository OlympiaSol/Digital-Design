transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab5/Counter8Bit.vhd}

vcom -93 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab5/simulation/modelsim/Counter8Bit_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Counter8Bit_tb

add wave *
view structure
view signals
run -all
