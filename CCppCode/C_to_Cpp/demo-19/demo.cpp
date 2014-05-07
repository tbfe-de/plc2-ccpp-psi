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

void meassurement::update_current() {
	const int v= sensor;	// assure single read
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

meassurement m(sensor1);

meassurement m2(sensor2);

avg_meassurement m3(sensor3);

meassurement *const m_all[]= {
	&m,
	&m2,
	&m3,
};
const int m_all_size= (sizeof m_all / sizeof m_all[0]);

