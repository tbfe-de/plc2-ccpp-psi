#ifndef demo_h
#define demo_h

#include <cassert>
#include <cstddef>

extern unsigned char sensor1;
extern double sensor2;
extern double sensor3;

template<typename T>
class meassurement {
	bool first;
	const volatile T &sensor;
	T minimum;
	T maximum;
	T current;
protected:
	virtual void prepare_first(T);
	virtual T calculate_current(T);
public:
	meassurement<T>(const T &s);
	virtual void update_current();
	void reset_minimum();
	void reset_maximum();
	T get_current() const;
	T get_minimum() const;
	T get_maximum() const;
#ifdef CREATE_DUMMIES_FOR_SWIG_WRAPPER
	// the following are never called but must be defined as
	// because SWIG generates code that makes use of them
	meassurement<T>() : sensor(*static_cast<const T*>(0))
		{ assert(false); }
	void operator=(const meassurement &)
		{ assert(false); }
#endif
};

template<typename T>
class avg_meassurement : public meassurement<T> {
	static const int N= 10;
	T avg[N];
protected:
	virtual void prepare_first(T);
	virtual T calculate_current(T);
public:
	avg_meassurement<T>(const T &s);
#ifdef CREATE_DUMMIES_FOR_SWIG_WRAPPER
	// the following are never called but must be defined as
	// because SWIG generates code that makes use of them
	avg_meassurement<T>()
		{ assert(false); }
	void operator=(const avg_meassurement &)
		{ assert(false); }
#endif
};

template<typename T>
inline
meassurement<T>::meassurement(const T &s)
	: first(true), sensor(s)
{}

template<typename T>
inline
void meassurement<T>::reset_minimum() {
	minimum= current;
}

template<typename T>
inline
void meassurement<T>::reset_maximum() {
	maximum= current;
}

template<typename T>
inline
T meassurement<T>::get_current() const {
	return current;
}

template<typename T>
inline
T meassurement<T>::get_minimum() const {
	return minimum;
}

template<typename T>
inline
T meassurement<T>::get_maximum() const {
	return maximum;
}

template<typename T>
inline
avg_meassurement<T>::avg_meassurement(const T &s)
	: meassurement<T>(s)
{}

extern void reset_minmax_all();
extern void reset_minimum_all();
extern void reset_maximum_all();

extern meassurement<unsigned char> m;
extern meassurement<double> m2;
extern avg_meassurement<double> m3;

extern void sensor_read();

#endif
