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
	$m configure -${minmax}imum [$m cget -current]
	
}

proc displayUpdate2 {} {
	global val2 min2 max2 m2
	set val2 [$m2 cget -current]
	set min2 [$m2 cget -minimum]
	set max2 [$m2 cget -maximum]
}
proc reset2 {minmax} {
	$m2 configure -${minmax}imum [$m2 cget -current]
	
}

proc displayUpdate3 {} {
	global val3 min3 max3 m3
	set val3 [$m3 cget -current]
	set min3 [$m3 cget -minimum]
	set max3 [$m3 cget -maximum]
}
proc reset3 {minmax} {
	$m3 configure -${minmax}imum [$m3 cget -current]
	
}

