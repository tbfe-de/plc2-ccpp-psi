#ifndef demo_h
#define demo_h

#include <cassert>

extern int sensor1;
extern int sensor2;
extern int sensor3;

class I_meassurement {
public:
	virtual void update_current() =0;
	virtual void reset_minimum() =0;
	virtual void reset_maximum() =0;
};

class no_avg {
protected:
	inline // implied
	void prepare_first(int)
		{}
	inline // implied
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

template<class AVG>
class meassurement_common : private AVG, public I_meassurement {
	bool first;
	const volatile int &sensor;
	int minimum;
	int maximum;
	int current;
public:
	meassurement_common<AVG>(const int &s);
	void update_current();
	void reset_minimum();
	void reset_maximum();
	int get_current() const;
	int get_minimum() const;
	int get_maximum() const;
#ifdef CREATE_DUMMIES_FOR_SWIG_WRAPPER
	// the following are never called but must be defined as
	// because SWIG generates code that makes use of them
	meassurement_common<AVG>() : sensor(*static_cast<const int*>(0))
		{ assert(false); }
	void operator=(const meassurement_common<AVG> &)
		{ assert(false); }
#endif
};

template<class AVG>
inline
meassurement_common<AVG>::meassurement_common(const int &s)
	: first(true), sensor(s)
{}

template<class AVG>
inline
void meassurement_common<AVG>::reset_minimum() {
	minimum= current;
}

template<class AVG>
inline
void meassurement_common<AVG>::reset_maximum() {
	maximum= current;
}

template<class AVG>
inline
int meassurement_common<AVG>::get_current() const {
	return current;
}

template<class AVG>
inline
int meassurement_common<AVG>::get_minimum() const {
	return minimum;
}

template<class AVG>
inline
int meassurement_common<AVG>::get_maximum() const {
	return maximum;
}

typedef meassurement_common<no_avg> meassurement;
typedef meassurement_common<avg_10> avg_meassurement;

extern meassurement m;
extern meassurement m2;
extern avg_meassurement m3;

extern I_meassurement *const m_all[];
extern const int m_all_size;

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern void sensor_read();

#endif
