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
	set val1 [$m cget -current]
	set min1 [$m cget -minimum]
	set max1 [$m cget -maximum]
}
proc reset1 {minmax} {
	global m
	reset_${minmax}imum $m
}

proc displayUpdate2 {} {
	global val2 min2 max2 m2
	set val2 [$m2 cget -current]
	set min2 [$m2 cget -minimum]
	set max2 [$m2 cget -maximum]
}
proc reset2 {minmax} {
	global m2
	reset_${minmax}imum $m2
	
}

proc displayUpdate3 {} {
	global val3 min3 max3 m3
	set val3 [$m3 cget -current]
	set min3 [$m3 cget -minimum]
	set max3 [$m3 cget -maximum]
}
proc reset3 {minmax} {
	global m3
	avg_reset_${minmax}imum $m3
	
}

