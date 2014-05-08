#include "demo.h"

void reset_minmax_all() {
	reset_minimum_all();
	reset_maximum_all();
}

void reset_minimum_all() {
	for (int i= 0; i < m_all_size; ++i)
		m_all[i]->reset_minimum();
}

void reset_maximum_all() {
	for (int i= 0; i < m_all_size; ++i)
		m_all[i]->reset_maximum();
}

