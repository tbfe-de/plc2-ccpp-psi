#include "demo.h"

void sensor_read() {
	update_current(&m, &sensor1);
	update_current(&m2, &sensor2);
	avg_update_current(&m3, &sensor3);
}

