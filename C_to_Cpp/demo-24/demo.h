#ifndef demo_h
#define demo_h

#include <cassert>

extern int sensor1;
extern int sensor2;
extern int sensor3;

class no_avg {
protected:
	void prepare_first(int)
		{}
	int calculate_current(int v)
		{ return v; }
};

class avg_10 {
	static const int N= 10;
	int avg[N];
protected:
	void prepare_first(int);
	int calculate_current(int v);
};

class meassurement_base {
	int minimum;
	int maximum;
protected:
	bool first;
	const volatile int &sensor;
	int current;
	void update_extrema();
public:
	meassurement_base(const int &s);
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
#ifdef CREATE_DUMMIES_FOR_SWIG_WRAPPER
	// the following are never called but must be defined as
	// because SWIG generates code that makes use of them
	meassurement_base() : sensor(*static_cast<const int*>(0))
		{ assert(false); }
	void operator=(const meassurement_base &)
		{ assert(false); }
#endif
};

template<class AVG>
class meassurement_common : public meassurement_base, private AVG  {
public:
	meassurement_common<AVG>(const int &s);
	void update_current();
#ifdef CREATE_DUMMIES_FOR_SWIG_WRAPPER
	// the following are never called but must be defined as
	// because SWIG generates code that makes use of them
	meassurement_common<AVG>() : meassurement_base(*static_cast<const int*>(0))
		{ assert(false); }
	void operator=(const meassurement_common<AVG> &)
		{ assert(false); }
#endif
};

inline
meassurement_base::meassurement_base(const int &s)
	: first(true), sensor(s)
{}

template<class AVG>
inline
meassurement_common<AVG>::meassurement_common(const int &s)
	: meassurement_base(s)
{}

template<class AVG>
void meassurement_common<AVG>::update_current() {
	const int v= sensor;	// assure single read
	if (first)
		this->prepare_first(v);
	current= this->calculate_current(v);
	update_extrema();
}

inline
void meassurement_base::reset_minimum() {
	minimum= current;
}

inline
void meassurement_base::reset_maximum() {
	maximum= current;
}

inline
int meassurement_base::get_current() const {
	return current;
}

inline
int meassurement_base::get_minimum() const {
	return minimum;
}

inline
int meassurement_base::get_maximum() const {
	return maximum;
}

typedef meassurement_common<no_avg> meassurement;
typedef meassurement_common<avg_10> avg_meassurement;

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
