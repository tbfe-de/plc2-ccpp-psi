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

extern void update_current(meassurement_t *mp, int v);
extern void avg_update_current(meassurement_t *mp, int v);
extern void reset_minimum(meassurement_t *mp);
extern void reset_maximum(meassurement_t *mp);

extern meassurement_t m;
extern meassurement_t m2;
extern meassurement_t m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

