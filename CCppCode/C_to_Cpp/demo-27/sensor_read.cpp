#include "demo.h"

#include <algorithm>
	using std::for_each;

meassurement *const all[]= {
	&m,
	&m2,
	&m3,
};

struct do_update {
	void operator()(meassurement *m) {
		m->update_current();
	}
};

void sensor_read() {
	for_each(&all[0], &all[sizeof all / sizeof all[0]], do_update());
}

