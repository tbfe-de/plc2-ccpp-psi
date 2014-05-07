#include "demo.h"

#include <algorithm>
	using std::for_each;

struct do_update {
	void operator()(meassurement *m) {
		m->update_current();
	}
};

void sensor_read() {
	for_each(&m_all[0], &m_all[m_all_size], do_update());
}

