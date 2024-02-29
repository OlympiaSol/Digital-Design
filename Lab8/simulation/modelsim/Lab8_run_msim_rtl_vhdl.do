transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/Lab8.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/Declare.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/Adder.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/Reg.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/MultiplierP.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/ram2ports4x256.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/ControlUnit.vhd}
vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/CtrlLogicP.vhd}

vcom -2008 -work work {E:/Quartus/DigitalDesignII(4202-4089)/Lab8/simulation/modelsim/lab8_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  lab8_tb

add wave *
view structure
view signals
run -all
