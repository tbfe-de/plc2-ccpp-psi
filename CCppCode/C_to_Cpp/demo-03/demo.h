#ifndef demo_h
#define demo_h

extern int sensor1;
extern int sensor2;
extern int sensor3;

extern int minimum;
extern int maximum;
extern int current;

extern int minimum2;
extern int maximum2;
extern int current2;

extern int minimum3;
extern int maximum3;
extern int current3;

extern void update_current(const int *);
extern void update_current2(const int *);
extern void update_current3(const int *);

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
