#!/usr/bin/wish

proc doBlink {what} {
	global blinker
	switch -exact -- $what {
		off	{ set blinker -1 }
		toggle	{ incr blinker }
	}
	if {$blinker < 0} {
		.speedsetter.top configure -background white
		.speedsetter.bottom configure -background white
		.speedsetter.scale configure -background white
	} elseif {$blinker % 2 == 0} {
		.speedsetter.top configure -background yellow
		.speedsetter.bottom configure -background white
		.speedsetter.scale configure -background yellow
	} else {
		.speedsetter.top configure -background white
		.speedsetter.bottom configure -background yellow
		.speedsetter.scale configure -background yellow
	}
}

proc createDisplayN {n min max tck} {
	global clients sensor$n val$n min$n max$n
	lappend clients $n

	frame .display$n -relief groove -borderwidth 3
	pack .display$n -side top -fill x

	set res [expr ($tck == int($tck)) ? 1 : $tck/10.0]
	scale .display$n.v\
		-orient horizontal\
		-from $min -to $max\
		-tickinterval $tck\
		-resolution $res\
		-font {Helvetical 8}\
		-label "SENSOR $n"\
		-variable sensor$n
	set sensor$n [expr ($min + $max) / 2]
	pack .display$n.v -side bottom -fill x

	frame .display$n.min
	label .display$n.min.head\
		-text "Minimum"
	label .display$n.min.val\
		-width 4\
		-background lightblue\
		-font {Helvetica 30}\
		-textvariable min$n
	set min$n -
	button .display$n.min.res\
		-text R\nE\nS\nE\nT\
		-font {Helvetica 8}\
		-command [list reset$n min]
	pack .display$n.min\
		-side left -fill y -expand 1
	pack .display$n.min.head\
		-side top -fill x -expand 0
	pack .display$n.min.val\
		-side left -fill y -expand 1
	pack .display$n.min.res\
		-side left -fill y -expand 0

	frame .display$n.max
	label .display$n.max.head\
		-text "Maximum"
	label .display$n.max.val\
		-width 4\
		-background peachpuff\
		-font {Helvetica 30}\
		-textvariable max$n
	set max$n -
	button .display$n.max.res\
		-text R\nE\nS\nE\nT\
		-font {Helvetica 8}\
		-command [list reset$n max]
	pack .display$n.max\
		-side right -fill y -expand 1
	pack .display$n.max.head\
		-side top -fill x -expand 0
	pack .display$n.max.val\
		-side right -fill y -expand 1
	pack .display$n.max.res\
		-side right -fill y -expand 0

	label .display$n.head\
		-text "Current"
	label .display$n.value\
		-width 10\
		-background white\
		-font {Helvetica 50}\
		-textvariable val$n
	set val$n -
	pack .display$n.head\
		-side top -fill x -expand 0
	pack .display$n.value\
		-side top -fill both -expand 1

}

proc createGUI {displays} {
	frame .speedsetter
	pack .speedsetter -side right -fill y

	button .speedsetter.top\
		-font {Helvetica 6}\
		-text UPDATE\
		-command {advance 3}
	pack .speedsetter.top -side top -fill x
	button .speedsetter.bottom\
		-font {Helvetica 6}\
		-text STOP\
		-command {advance 0}
	pack .speedsetter.bottom -side bottom -fill x
	scale .speedsetter.scale\
		-orient vertical\
		-from 5 -to 0\
		-resolution 0.01\
		-showvalue 0\
		-variable speed\
		-command advance
	pack .speedsetter.scale -side right -fill both
	
	set n 0
	foreach d $displays {
		eval createDisplayN [incr n] $d
	}

	button .reset_minimum_all\
		-text "MINIMA"\
		-justify left\
		-width 9\
		-font {Helvetica 8}\
		-command reset_minimum_all
	pack .reset_minimum_all -side left -fill x

	button .reset_maximum_all\
		-text "MAXIMA"\
		-justify right\
		-width 9\
		-font {Helvetica 8}\
		-command reset_maximum_all
	pack .reset_maximum_all -side right -fill x

	button .reset_minmax_all\
		-text "RESET ALL"\
		-font {Helvetica 8}\
		-command reset_minmax_all
	pack .reset_minmax_all -side left -fill x -expand 1

	doBlink off
}

set lwtime 0
proc advance {sv} {
	global lwtime speed
	set speed $sv
	set wtime [expr ($sv == 0.0) ? 0 : (1<<11) / (1<<int($sv+1))]
	if {$wtime != $lwtime} {
		visualUpdate [set lwtime $wtime]
	}
}

proc visualUpdate {wtime} {
	global next
	if {[info exists next]} {
		after cancel $next
		unset next
	}
	if {$wtime == 0} {
		doBlink off
	} else {
		doBlink toggle
		global blinker
		if {$blinker % 2} {
			sensor_read
		}
		global clients
		foreach c $clients {
			displayUpdate$c
		}
		update idletasks
		set next [after $wtime visualUpdate $wtime]
	}
}
