#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	reset_minimum(&m);
	reset_minimum(&m2);
	avg_reset_minimum(&m3);
}

void reset_maximum_all() {
	reset_maximum(&m);
	reset_maximum(&m2);
	avg_reset_maximum(&m3);
}

