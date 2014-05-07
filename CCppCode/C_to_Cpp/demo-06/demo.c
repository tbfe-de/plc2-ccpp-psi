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

void avg_update_current(meassurement_t *mp, const int *sensor_addr) {
	static int avg[10];
	const static int N= (sizeof avg / sizeof avg[0]);
	int i;
	int v= *sensor_addr;
	if (mp->first) {
		for (i= 0; i < N; ++i)
			avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= avg[i];
	v/= 10;
	update_current(mp, &v);
}

meassurement_t m= {1};

meassurement_t m2= {1};

meassurement_t m3= {1};

