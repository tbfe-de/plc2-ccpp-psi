#! /usr/bin/wish

# -----------------------------------------------------------------------------
# Some global variables that will be later-on moved to the part implemented in
# C (for now a pure Tcl solution is provided)
#
set low_trigger 19.0
set high_trigger 21.0
set system_heater 0

# -----------------------------------------------------------------------------
# This is the function that will be later on moved to C (for now a pure Tcl
# solution is provided)
#
proc switch_heater {temp} {
	global low_trigger
	global high_trigger
	global system_heater
	if {$temp <= $low_trigger} {
		set system_heater 1
	}
	if {$temp >= $high_trigger} {
		set system_heater 0
	}
}

# =============================================================================
# This ends the part that need to be touched if the Tcl/Tk simulation is later
# used to visualize the part that is written in C; below is a very limited and
# bare-bones implementation, that does nothing more as to enable the user to
# the the assumed system temperatur and watch the effect on the heating state.

# ---------------------------
# Simulate temperature sensor
# ---------------------------

set sensed_temperature 21.0

# -------------------
# Create a simple GUI
# -------------------

proc create_gui {} {

	scale .system_temperatur\
		-orient horizontal\
		-from -20.0 -to 55.0 -resolution 0.5\
		-variable sensed_temperature\
		-command temperature_changed

	label .heater_state

	pack .system_temperatur\
		-side bottom\
		-fill x

	pack .heater_state\
		-side top\
		-expand 1\
		-fill both

}

# -------------------------------------------
# Call-back for changes in system temperature
# -------------------------------------------

proc temperature_changed {args} {
	global sensed_temperature
	switch_heater $sensed_temperature
	show_heater_state
}

# -------------------------------------------
# Visualize state of heater (on or off)
# -------------------------------------------

proc show_heater_state {} {
	global system_heater
	if {$system_heater} {
		.heater_state configure\
			-text "ON"\
			-background red
	} else {
		.heater_state configure\
			-text "OFF"\
			-background blue
	}
}

# ----------------------------------------------
# Actually create the GUI and show current state
# ----------------------------------------------

create_gui;		# (as the name say) and
temperature_changed;	# show consistent state
