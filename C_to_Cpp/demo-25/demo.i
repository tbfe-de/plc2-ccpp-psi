%module demo;
%{
#define	CREATE_DUMMIES_FOR_SWIG_WRAPPER
#include "demo.h"
#undef	CREATE_DUMMIES_FOR_SWIG_WRAPPER
%}

extern int sensor1;
extern int sensor2;
extern int sensor3;

template<class AVG>
class meassurement_common : private AVG {
public:
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
};

%template(meassurement_no_avg) meassurement_common<no_avg>;
%template(meassurement_avg_10) meassurement_common<avg_10>;

typedef meassurement_common<no_avg> meassurement;
typedef meassurement_common<avg_10> avg_meassurement;

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

