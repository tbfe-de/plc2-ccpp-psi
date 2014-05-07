#include "demo.h"

void sensor_read() {
	for (int i= 0; i < m_all_size; ++i)
		m_all[i]->update_current();
}

