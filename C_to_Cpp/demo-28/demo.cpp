#include "demo.h"

#include <algorithm>
	using std::copy;
	using std::fill;
#include <numeric>
	using std::accumulate;

int sensor1;
int sensor2;
int sensor3;

meassurement::meassurement(const int &s)
	: first(true), sensor(s)
{
	all.push_front(this);
}

meassurement::~meassurement() {
	all.remove(this);
}

void meassurement::prepare_first(int v) {
}

int meassurement::calculate_current(int v) {
	return v;
}

void avg_meassurement::prepare_first(int v) {
	fill(&avg[0], &avg[N], v);
}

int avg_meassurement::calculate_current(int v) {
	copy(&avg[1], &avg[N], &avg[0]);
	avg[N-1]= v;
	return accumulate(&avg[0], &avg[N], 0) / N;
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

list<meassurement *> meassurement::all;

void meassurement::update_all() {
	for(list<meassurement *>::iterator it(all.begin());
					   it != all.end();
					 ++it)
		(*it)->update_current();
}

void meassurement::reset_minimum_all() {
	for(list<meassurement *>::iterator it(all.begin());
					   it != all.end();
					 ++it)
		(*it)->reset_minimum();
}

void meassurement::reset_maximum_all() {
	for(list<meassurement *>::iterator it(all.begin());
					   it != all.end();
					 ++it)
		(*it)->reset_maximum();
}

meassurement m(sensor1);

meassurement m2(sensor2);

avg_meassurement m3(sensor3);

