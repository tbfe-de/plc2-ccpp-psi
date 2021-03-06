#include "demo.h"

#include <algorithm>
	using std::fill;
	using std::copy;
	using std::for_each;
#include <numeric>
	using std::accumulate;

int sensor1;
int sensor2;
int sensor3;

void meassurement::prepare_first(int v) {
}
int meassurement::calculate_current(int v) {
	return v;
}

void avg_meassurement::prepare_first(int v) {
	avg.assign(N, v);
}
int avg_meassurement::calculate_current(int v) {
	avg.pop_front();
	avg.push_back(v);
	return accumulate(avg.begin(), avg.end(), 0) / N;
}

void meassurement::update_current() {
	const int v= sensor;	// assure single read
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

meassurement m(sensor1);

meassurement m2(sensor2);

avg_meassurement m3(sensor3);

meassurement *const m_all[]= {
	&m,
	&m2,
	&m3
};
const int m_all_size= (sizeof m_all / sizeof m_all[0]);

