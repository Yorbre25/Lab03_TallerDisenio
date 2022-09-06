transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/XorN.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Suma.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/RightShift.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Resta.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Overflow.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/OrN.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Mux.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Multiplicacion.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Modulo.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/LeftShift.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/flag_detector.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Division.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/DisplayHex.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/Button_Switch.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/AndN.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/ALU.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/RegistroCargaInput.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/RegistroCargaOuput.sv}
vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/RegistroCargaTop.sv}

vlog -sv -work work +incdir+C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2 {C:/Users/Lenovo/Documents/GitHub/Lab03_TallerDisenio/Problema_2/RegistroCargaTest.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testBranch

add wave *
view structure
view signals
run -all
