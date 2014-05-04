#include <stdio.h>

#include "thermostate.h"

int main() {
	float system_temperature;
	int old_heater_state = system_heater;
	while (scanf("%f", &system_temperature) == 1) {
		switch_heater(system_temperature);
		if (old_heater_state != system_heater) {
			printf("system heater switched %s\n",
				system_heater ? "ON" : "OFF");
			old_heater_state = system_heater;
		}
	}
	return 0;
}
