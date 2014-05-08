#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

static
void update_internal(int *p_current, int *p_minimum, int *p_maximum, int *p_first, int v) {
	*p_current= v;
	if (*p_first)
		*p_minimum= *p_maximum= v;
	if (*p_minimum > v)
		*p_minimum= v;
	if (*p_maximum < v)
		*p_maximum= v;
	*p_first= 0;
}
	
int minimum;
int maximum;
int current;

void update_current(const int *sensor_addr) {
	static int first= 1;
	update_internal(&current, &minimum, &maximum, &first, *sensor_addr);
}

int minimum2;
int maximum2;
int current2;

void update_current2(const int *sensor_addr) {
	static int first= 1;
	update_internal(&current2, &minimum2, &maximum2, &first, *sensor_addr);
}

int minimum3;
int maximum3;
int current3;

void update_current3(const int *sensor_addr) {
	static int first= 1;
	static int avg[10];
	const static int N= (sizeof avg / sizeof avg[0]);
	int i;
	int v= *sensor_addr;
	if (first) {
		for (i= 0; i < N; ++i)
			avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= avg[i];
	update_internal(&current3, &minimum3, &maximum3, &first, v/N);
}

