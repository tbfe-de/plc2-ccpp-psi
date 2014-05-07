#!/usr/bin/wish

source ../demo-gui.tcl

createGUI {
	{   0   50   5 }
	{ -30   30   5 }
	{ 500 1500 100 }
}

set first 1
proc sensor_read {} {
	global first

	global sensor1 min1 val1 max1
	set val1 $sensor1
	if {$first} {
		set min1 $val1
		set max1 $val1
	} elseif {$min1 > $val1} {
		set min1 $val1
	} elseif {$max1 < $val1} {
		set max1 $val1
	}

	global sensor2 min2 val2 max2
	set val2 $sensor2
	if {$first} {
		set min2 $val2
		set max2 $val2
	} elseif {$min2 > $val2} {
		set min2 $val2
	} elseif {$max2 < $val2} {
		set max2 $val2
	}

	set N 10
	global sensor3 min3 val3 max3 avg3
	set val3 $sensor3
	if {$first} {
		for {set i 0} {$i < $N} {incr i} {
			lappend avg3 $sensor3
		}
	}
	set avg3 [lreplace $avg3 0 0]
	lappend avg3 $sensor3
	set val3 0
	foreach v $avg3 {
		incr val3 $v
	}
	set val3 [expr $val3 / $N]
	if {$first} {
		set min3 $val3
		set max3 $val3
	} elseif {$min3 > $val3} {
		set min3 $val3
	} elseif {$max3 < $val3} {
		set max3 $val3
	}

	set first 0
}

proc reset_minmax_all {} {
	reset_minimum_all
	reset_maximum_all
}

proc reset_minimum_all {} {
	global min1 sensor1
	global min2 sensor2
	global min3 sensor3
	set min1 $sensor1
	set min2 $sensor2
	set min3 $sensor3
}

proc reset_maximum_all {} {
	global max1 sensor1
	global max2 sensor2
	global max3 sensor3
	set max1 $sensor1
	set max2 $sensor2
	set max3 $sensor3
}

proc reset1 {minmax} {
	global ${minmax}1 val1
	set ${minmax}1 $val1
}
proc reset2 {minmax} {
	global ${minmax}2 val2
	set ${minmax}2 $val2
}
proc reset3 {minmax} {
	global ${minmax}3 val3
	set ${minmax}3 $val3
}

proc displayUpdate1 {} {}
proc displayUpdate2 {} {}
proc displayUpdate3 {} {}
