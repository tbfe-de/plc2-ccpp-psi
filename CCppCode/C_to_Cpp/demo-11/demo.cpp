#include "demo.h"

int sensor1;
int sensor2;
int sensor3;

meassurement::meassurement()
	: first(true)
{}

void meassurement::update_current(const int *sensor_addr) {
	this->current= *sensor_addr;
	if (this->first)
		this->minimum= this->maximum= this->current;
	if (this->minimum > this->current)
		this->minimum= this->current;
	if (this->maximum < this->current)
		this->maximum= this->current;
	this->first= false;
}

void meassurement::reset_minimum() {
	this->minimum= this->current;
}

void meassurement::reset_maximum() {
	this->maximum= this->current;
}

int meassurement::get_current() const {
	return this->current;
}

int meassurement::get_minimum() const {
	return this->minimum;
}

int meassurement::get_maximum() const {
	return this->maximum;
}

void avg_meassurement::update_current(const int *sensor_addr) {
	const static int N= (sizeof this->avg / sizeof this->avg[0]);
	int i;
	int v= *sensor_addr;
	if (this->m.first) {
		for (i= 0; i < N; ++i)
			this->avg[i]= v;
	}
	for (i= 1; i < N; ++i)
		this->avg[i-1]= this->avg[i];
	this->avg[N-1]= v;
	v= 0;
	for (i= 0; i < N; ++i)
		v+= this->avg[i];
	v/= N;
	this->m.update_current(&v);
}

void avg_meassurement::reset_minimum() {
	m.reset_minimum();
}

void avg_meassurement::reset_maximum() {
	m.reset_maximum();
}

int avg_meassurement::get_current() const {
	return m.get_current();
}

int avg_meassurement::get_minimum() const {
	return m.get_minimum();
}

int avg_meassurement::get_maximum() const {
	return m.get_maximum();
}

meassurement m;

meassurement m2;

avg_meassurement m3;

