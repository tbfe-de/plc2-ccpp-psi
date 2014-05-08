#include "demo.h"

unsigned char sensor1;
double sensor2;
double sensor3;

template<typename T>
void meassurement<T>::prepare_first(T v) {
}
template<typename T>
T meassurement<T>::calculate_current(T v) {
	return v;
}

template<typename T>
void avg_meassurement<T>::prepare_first(T v) {
	for (int i= 0; i < N; ++i)
		avg[i]= v;
}
template<typename T>
T avg_meassurement<T>::calculate_current(T v) {
	for (int i= 1; i < N; ++i)
		avg[i-1]= avg[i];
	avg[N-1]= v;
	v= 0;
	for (int i= 0; i < N; ++i)
		v+= avg[i];
	return v/N;
}

template<typename T>
void meassurement<T>::update_current() {
	const T v= sensor;	// assure single read
	if (first)
		prepare_first(v);
	current= calculate_current(v);
	if (first)
		minimum= maximum= current;
	if (minimum > current)
		minimum= current;
	if (maximum < current)
		maximum= current;
	first= false;
}

meassurement<unsigned char> m(sensor1);

meassurement<double> m2(sensor2);

avg_meassurement<double> m3(sensor3);

