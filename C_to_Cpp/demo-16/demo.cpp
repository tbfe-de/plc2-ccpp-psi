#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void meassurement::prepare_first(int v) {
}
int meassurement::calculate_current(int v) {
	return v;
}

void avg_meassurement::prepare_first(int v) {
	for (int i= 0; i < N; ++i)
		avg[i]= v;
}
int avg_meassurement::calculate_current(int v) {
	for (int i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (int i= 0; i < N; ++i)
		v+= avg[i];
	return v/N;
}

void meassurement::update_current(const int *sensor_addr) {
	const int v= *sensor_addr;
	if (first)
		prepare_first(v);
	current= calculate_current(v);
	if (first)
		minimum= maximum= current;
	if (minimum > current)
		minimum= current;
	if (maximum < current)
		maximum= current;
	first= false;
}

meassurement m;

meassurement m2;

avg_meassurement m3;

struct m_config all[]= {
	{ &m, 	&sensor1 },
	{ &m2,	&sensor2 },
	{ &m3,	&sensor3 }
};
int m_config_size= (sizeof all / sizeof all[0]);

