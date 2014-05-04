#include <assert.h>
#include <stdio.h>

#include "thermostate.h"

int main() {
	system_heater = 0;

	switch_heater(20.0f);
	assert(system_heater == 0);

	switch_heater(19.5f);
	assert(system_heater == 0);

	switch_heater(19.0f);
	assert(system_heater == 1);

	switch_heater(17.0f);
	assert(system_heater == 1);

	switch_heater(20.0f);
	assert(system_heater == 1);

	switch_heater(24.9f);
	assert(system_heater == 1);

	switch_heater(25.0f);
	assert(system_heater == 0);

	switch_heater(30.0f);
	assert(system_heater == 0);

	switch_heater(3.0f);
	assert(system_heater == 1);
	
	(void) printf("** ALL TESTS PASSED\n");
	return 0;
}
