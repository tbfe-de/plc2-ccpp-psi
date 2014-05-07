#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void update_internal(meassurement_t *mp, int v) {
	mp->current= v;
	if (mp->first)
		mp->minimum= mp->maximum= v;
	if (mp->minimum > v)
		mp->minimum= v;
	if (mp->maximum < v)
		mp->maximum= v;
	mp->first= 0;
}

meassurement_t m= {1};

void update_current(const int *sensor_addr) {
	update_internal(&m, *sensor_addr);
}

meassurement_t m2= {1};

void update_current2(const int *sensor_addr) {
	update_internal(&m2, *sensor_addr);
}

meassurement_t m3= {1};

void update_current3(const int *sensor_addr) {
	static int avg[10];
	const static int N= (sizeof avg / sizeof avg[0]);
	int i;
	int v= *sensor_addr;
	if (m3.first) {
		for (i= 0; i < N; ++i)
			avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= avg[i];
	update_internal(&m3, v/10);
}

