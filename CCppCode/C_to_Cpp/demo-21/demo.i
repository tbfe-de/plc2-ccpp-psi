%module demo;
%{
#define	CREATE_DUMMIES_FOR_SWIG_WRAPPER
#include "demo.h"
#undef	CREATE_DUMMIES_FOR_SWIG_WRAPPER
%}

extern unsigned char sensor1;
extern double sensor2;
extern double sensor3;

template<typename T>
class meassurement {
public:
	void reset_minimum();
	void reset_maximum();
	T get_current() const;
	T get_minimum() const;
	T get_maximum() const;
};

template<typename T>
class avg_meassurement : public meassurement<T> {};

%template(meassurement_uc) meassurement<unsigned char>;
%template(meassurement_d) meassurement<double>;
%template(avg_meassurement_d) avg_meassurement<double>;

extern meassurement<unsigned char> m;
extern meassurement<double> m2;
extern avg_meassurement<double> m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

