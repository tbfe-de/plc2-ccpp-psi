#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	minimum= current;
	minimum2= current2;
	minimum3= current3;
}

void reset_maximum_all() {
	maximum= current;
	maximum2= current2;
	maximum3= current3;
}

