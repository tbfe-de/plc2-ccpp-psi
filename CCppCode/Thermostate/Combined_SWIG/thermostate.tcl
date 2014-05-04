# ----------------------------------------------------------------------------
# C/C++ code will have been compiled into the share object loaded below

load ./thermostate.so

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
		-orient horizontal -length 250\
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

trace add variable system_heater {write} showvar 

proc showvar args {
	global system_heater
	puts $system_heater
}
