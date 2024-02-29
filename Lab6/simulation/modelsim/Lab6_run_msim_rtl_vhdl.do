transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/Reg.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/Adder.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/MultiplierP.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/Declare.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/CtrlLogicP.vhd}

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab6/simulation/modelsim/MultiplierP_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  MultiplierP_tb

add wave *
view structure
view signals
run -all
