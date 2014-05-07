#ifndef demo_h
#define demo_h

extern int sensor1;
extern int sensor2;
extern int sensor3;

typedef struct {
	int first;
	int minimum;
	int maximum;
	int current;
} meassurement_t;

typedef struct {
	meassurement_t m;
	int avg[10];
} avg_meassurement_t;

extern void reset_minimum(meassurement_t *mp);
extern void reset_maximum(meassurement_t *mp);
extern int get_current(meassurement_t *mp);
extern int get_minimum(meassurement_t *mp);
extern int get_maximum(meassurement_t *mp);

extern void avg_reset_minimum(avg_meassurement_t *mp);
extern void avg_reset_maximum(avg_meassurement_t *mp);
extern int avg_get_current(avg_meassurement_t *mp);
extern int avg_get_minimum(avg_meassurement_t *mp);
extern int avg_get_maximum(avg_meassurement_t *mp);

extern meassurement_t m;
extern meassurement_t m2;
extern avg_meassurement_t m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
