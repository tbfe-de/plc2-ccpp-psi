#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	m.minimum= m.current;
	m2.minimum= m2.current;
	m3.minimum= m3.current;
}

void reset_maximum_all() {
	m.maximum= m.current;
	m2.maximum= m2.current;
	m3.maximum= m3.current;
}

