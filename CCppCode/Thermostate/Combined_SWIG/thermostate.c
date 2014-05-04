const float low_trigger = 19.0;
const float high_trigger = 25.0;
int system_heater = 0;

void switch_heater(float temp) {
	if (temp <= low_trigger) {
		system_heater = 1;
	}
	if (temp >= high_trigger) {
		system_heater = 0;
	}
}
