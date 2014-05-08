#!/usr/bin/wish

load demo.so

source ../demo-gui.tcl

createGUI {
	{   0   50   5 }
	{ -30   30   5 }
	{ 500 1500 100 }
}

proc displayUpdate1 {} {
	global val1 min1 max1
	global minimum maximum current
	set val1 $current
	set min1 $minimum
	set max1 $maximum
}
proc reset1 {minmax} {
	global ${minmax}imum current
	set ${minmax}imum $current
	
}

proc displayUpdate2 {} {
	global val2 min2 max2
	global minimum2 maximum2 current2
	set val2 $current2
	set min2 $minimum2
	set max2 $maximum2
}
proc reset2 {minmax} {
	global ${minmax}imum2 current2
	set ${minmax}imum2 $current2
	
}

proc displayUpdate3 {} {
	global val3 min3 max3
	global minimum3 maximum3 current3
	set val3 $current3
	set min3 $minimum3
	set max3 $maximum3
}
proc reset3 {minmax} {
	global ${minmax}imum3 current3
	set ${minmax}imum3 $current3
	
}

