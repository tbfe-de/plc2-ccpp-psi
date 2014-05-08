%module demo;
%{
#include "demo.h"
%}

extern int sensor1;
extern int sensor2;
extern int sensor3;

typedef struct meassurement {
	%immutable;
	int minimum;
	int maximum;
	int current;
} meassurement_t;

typedef struct avg_meassurement {
	%immutable;
	int minimum;
	int maximum;
	int current;
} avg_meassurement_t;

extern void reset_minimum(meassurement_t *mp);
extern void reset_maximum(meassurement_t *mp);
extern void avg_reset_minimum(avg_meassurement_t *mp);
extern void avg_reset_maximum(avg_meassurement_t *mp);

extern meassurement_t m;
extern meassurement_t m2;
extern avg_meassurement_t m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

