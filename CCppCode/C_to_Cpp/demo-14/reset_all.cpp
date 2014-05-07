#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	for (meassurement **mp= all; *mp; ++mp)
		(*mp)->reset_minimum();
}

void reset_maximum_all() {
	for (meassurement **mp= all; *mp; ++mp)
		(*mp)->reset_maximum();
}

