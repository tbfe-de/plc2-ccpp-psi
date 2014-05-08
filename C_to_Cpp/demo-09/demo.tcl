#!/usr/bin/wish

load demo.so

source ../demo-gui.tcl

createGUI {
	{   0   50   5 }
	{ -30   30   5 }
	{ 500 1500 100 }
}

proc displayUpdate1 {} {
	global val1 min1 max1 m
	set val1 [get_current $m]
	set min1 [get_minimum $m]
	set max1 [get_maximum $m]
}
proc reset1 {minmax} {
	global m
	reset_${minmax}imum $m
}

proc displayUpdate2 {} {
	global val2 min2 max2 m2
	set val2 [get_current $m2]
	set min2 [get_minimum $m2]
	set max2 [get_maximum $m2]
}
proc reset2 {minmax} {
	global m2
	reset_${minmax}imum $m2
	
}

proc displayUpdate3 {} {
	global val3 min3 max3 m3
	set val3 [avg_get_current $m3]
	set min3 [avg_get_minimum $m3]
	set max3 [avg_get_maximum $m3]
}
proc reset3 {minmax} {
	global m3
	avg_reset_${minmax}imum $m3
	
}

