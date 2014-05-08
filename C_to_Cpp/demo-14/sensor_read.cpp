#include "demo.h"

void sensor_read() {
	m.update_current(&sensor1);
	m2.update_current(&sensor2);
	m3.update_current(&sensor3);
}

