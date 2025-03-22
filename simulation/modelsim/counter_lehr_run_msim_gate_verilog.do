transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {counter_lehr.vo}

vlog -vlog01compat -work work +incdir+D:/intelFPGA_File/counter_lehr/simulation/modelsim {D:/intelFPGA_File/counter_lehr/simulation/modelsim/counter_lehr.vt}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  counter_lehr_vlg_tst

add wave *
view structure
view signals
run -all
