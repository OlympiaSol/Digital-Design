transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab7/Exercise7/newSorter.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab7/Exercise7/RAM256x8.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab7/Exercise7/newSort.vhd}

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab7/Exercise7/simulation/modelsim/newsorter_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  newSorter_tb

add wave *
view structure
view signals
run -all
