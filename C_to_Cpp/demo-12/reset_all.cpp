#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	m.reset_minimum();
	m2.reset_minimum();
	m3.reset_minimum();
}

void reset_maximum_all() {
	m.reset_maximum();
	m2.reset_maximum();
	m3.reset_maximum();
}

