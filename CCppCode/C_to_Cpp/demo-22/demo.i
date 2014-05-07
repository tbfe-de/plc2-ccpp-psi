%module demo;
%{
#define	CREATE_DUMMIES_FOR_SWIG_WRAPPER
#include "demo.h"
#undef	CREATE_DUMMIES_FOR_SWIG_WRAPPER
%}

extern unsigned char sensor1;
extern double sensor2;
extern int sensor3;

template<typename T>
class meassurement {
public:
	void reset_minimum();
	void reset_maximum();
	T get_current() const;
	T get_minimum() const;
	T get_maximum() const;
};

template<typename T, std::size_t N>
class avg_meassurement : public meassurement<T> {};

%template(meassurement_uc) meassurement<unsigned char>;
%template(meassurement_d) meassurement<double>;
%template(meassurement_i) meassurement<int>;
%template(avg_meassurement_i_10) avg_meassurement<int, 10>;

extern meassurement<unsigned char> m;
extern meassurement<double> m2;
extern avg_meassurement<int, 10> m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

