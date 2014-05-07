#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void meassurement::update_current(const int *sensor_addr) {
	current= *sensor_addr;
	if (first)
		minimum= maximum= current;
	if (minimum > current)
		minimum= current;
	if (maximum < current)
		maximum= current;
	first= false;
}

void avg_meassurement::update_current(const int *sensor_addr) {
	const static int N= (sizeof avg / sizeof avg[0]);
	int i;
	int v= *sensor_addr;
	if (is_first()) {
		for (i= 0; i < N; ++i)
			avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= avg[i];
	v/= N;
	meassurement::update_current(&v);
}

meassurement m;

meassurement m2;

avg_meassurement m3;

meassurement *all[]= {
	&m,
	&m2,
	&m3,
	0 // <-- NEVER DELETE THIS
};

