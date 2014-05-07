#include "LimitDetector.h"

#include <iostream>
#include <iomanip>
using namespace std;

void LimitDetector::action(bool t) {
	cout << name << (t ? " -> ON" : " -> OFF") << endl;
	state = t;
}

#ifdef SELF_REGISTERING

LimitDetector *LimitDetector::all[100];
int LimitDetector::count = 0;

void LimitDetector::set_all(int value) {
	for (int i = 0; i < count; ++i)
		all[i]->set(value);
}

#endif
