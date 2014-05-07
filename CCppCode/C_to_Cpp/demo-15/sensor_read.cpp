#include "demo.h"

void sensor_read() {
	for (int i= 0; i < m_config_size; ++i)
		all[i].m->update_current(all[i].sensor_addr);
}

