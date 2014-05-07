#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void avg_10::prepare_first(int v) {
	for (int i= 0; i < N; ++i)
		avg[i]= v;
}
int avg_10::calculate_current(int v) {
	for (int i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (int i= 0; i < N; ++i)
		v+= avg[i];
	return v/N;
}

meassurement m(sensor1);

meassurement m2(sensor2);

avg_meassurement m3(sensor3);

