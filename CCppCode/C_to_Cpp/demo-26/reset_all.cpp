#include "demo.h"

#include <algorithm>
	using std::for_each;

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

struct do_reset_min {
	void operator()(meassurement *m) {
		m->reset_minimum();
	}
};

struct do_reset_max {
	void operator()(meassurement *m) {
		m->reset_maximum();
	}
};

void reset_minimum_all() {
	for_each(&m_all[0], &m_all[m_all_size], do_reset_min());
}

void reset_maximum_all() {
	for_each(&m_all[0], &m_all[m_all_size], do_reset_max());
}

