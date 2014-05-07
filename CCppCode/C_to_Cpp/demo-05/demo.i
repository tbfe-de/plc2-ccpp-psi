%module demo;
%{
#include "demo.h"
%}

extern int sensor1;
extern int sensor2;
extern int sensor3;

typedef struct meassurement {
	int minimum;
	int maximum;
	%immutable;
	int current;
} meassurement_t;

extern meassurement_t m;
extern meassurement_t m2;
extern meassurement_t m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

