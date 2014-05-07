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
	mp->first= false;
}

void reset_minimum(meassurement_t *mp) {
	mp->minimum= mp->current;
}

void reset_maximum(meassurement_t *mp) {
	mp->maximum= mp->current;
}

int get_current(const meassurement_t *mp) {
	return mp->current;
}

int get_minimum(const meassurement_t *mp) {
	return mp->minimum;
}

int get_maximum(const meassurement_t *mp) {
	return mp->maximum;
}

void update_current(avg_meassurement_t *mp, const int *sensor_addr) {
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

void reset_minimum(avg_meassurement_t *mp) {
	reset_minimum(&mp->m);
}

void reset_maximum(avg_meassurement_t *mp) {
	reset_maximum(&mp->m);
}

int get_current(const avg_meassurement_t *mp) {
	return mp->m.current;
}

int get_minimum(const avg_meassurement_t *mp) {
	return mp->m.minimum;
}

int get_maximum(const avg_meassurement_t *mp) {
	return mp->m.maximum;
}

meassurement_t m= {1};

meassurement_t m2= {1};

avg_meassurement_t m3= {1};

