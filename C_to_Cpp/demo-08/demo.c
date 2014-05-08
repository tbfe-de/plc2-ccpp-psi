#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void update_current(meassurement_t *mp, const int *sensor_addr) {
	mp->current= *sensor_addr;
	if (mp->first)
		mp->minimum= mp->maximum= mp->current;
	if (mp->minimum > mp->current)
		mp->minimum= mp->current;
	if (mp->maximum < mp->current)
		mp->maximum= mp->current;
	mp->first= 0;
}

void reset_minimum(meassurement_t *mp) {
	mp->minimum= mp->current;
}

void reset_maximum(meassurement_t *mp) {
	mp->maximum= mp->current;
}

void avg_update_current(avg_meassurement_t *mp, const int *sensor_addr) {
	const static int N= (sizeof mp->avg / sizeof mp->avg[0]);
	int i;
	int v= *sensor_addr;
	if (mp->m.first) {
		for (i= 0; i < N; ++i)
			mp->avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		mp->avg[i-1]= mp->avg[i];
	mp->avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= mp->avg[i];
	v/= N;
	update_current(&mp->m, &v);
}

void avg_reset_minimum(avg_meassurement_t *mp) {
	reset_minimum(&mp->m);
}

void avg_reset_maximum(avg_meassurement_t *mp) {
	reset_maximum(&mp->m);
}

meassurement_t m= {1};

meassurement_t m2= {1};

avg_meassurement_t m3= {1};

