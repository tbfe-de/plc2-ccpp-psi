%module demo;
%{
#define	CREATE_DUMMIES_FOR_SWIG_WRAPPER
#include "demo.h"
#undef	CREATE_DUMMIES_FOR_SWIG_WRAPPER
%}

extern int sensor1;
extern int sensor2;
extern int sensor3;

class meassurement {
public:
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
};

class avg_meassurement : public meassurement {};

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

