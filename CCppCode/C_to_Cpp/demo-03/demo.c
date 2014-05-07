#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

int minimum;
int maximum;
int current;

void update_current(const int *sensor_addr) {
	static int first= 1;
	current= *sensor_addr;;
	if (first)
		minimum= maximum= current;
	if (minimum > current)
		minimum= current;
	if (maximum < current)
		maximum= current;
	first= 0;
}

int minimum2;
int maximum2;
int current2;

void update_current2(const int *sensor_addr) {
	static int first= 1;
	current2= *sensor_addr;
	if (first)
		minimum2= maximum2= current2;
	if (minimum2 > current2)
		minimum2= current2;
	if (maximum2 < current2)
		maximum2= current2;
	first= 0;
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
	current3= v/N;
	if (first)
		minimum3= maximum3= current3;
	if (minimum3 > current3)
		minimum3= current3;
	if (maximum3 < current3)
		maximum3= current3;
	first= 0;
}

