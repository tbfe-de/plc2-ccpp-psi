#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

void meassurement::update_current(const int *sensor_addr) {
	this->current= *sensor_addr;
	if (this->first)
		this->minimum= this->maximum= this->current;
	if (this->minimum > this->current)
		this->minimum= this->current;
	if (this->maximum < this->current)
		this->maximum= this->current;
	this->first= false;
}

void avg_meassurement::update_current(const int *sensor_addr) {
	const static int N= (sizeof this->avg / sizeof this->avg[0]);
	int i;
	int v= *sensor_addr;
	if (this->m.first) {
		for (i= 0; i < N; ++i)
			this->avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		this->avg[i-1]= this->avg[i];
	this->avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= this->avg[i];
	v/= N;
	this->m.update_current(&v);
}

meassurement m;

meassurement m2;

avg_meassurement m3;

