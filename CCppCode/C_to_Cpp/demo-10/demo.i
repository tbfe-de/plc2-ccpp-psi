%module demo;
%{
#include "demo.h"
%}

extern int sensor1;
extern int sensor2;
extern int sensor3;

struct meassurement_t;
struct avg_meassurement_t;

extern void reset_minimum(meassurement_t *mp);
extern void reset_maximum(meassurement_t *mp);
extern int get_current(const meassurement_t *mp);
extern int get_minimum(const meassurement_t *mp);
extern int get_maximum(const meassurement_t *mp);

extern void reset_minimum(avg_meassurement_t *mp);
extern void reset_maximum(avg_meassurement_t *mp);
extern int get_current(const avg_meassurement_t *mp);
extern int get_minimum(const avg_meassurement_t *mp);
extern int get_maximum(const avg_meassurement_t *mp);

extern meassurement_t m;
extern meassurement_t m2;
extern avg_meassurement_t m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

