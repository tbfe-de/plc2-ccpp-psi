#include <iostream>
using namespace std;

#include "LimitDetector.h"

void send_all(LimitDetector *all[], int count, int value) {
	cout << "setting to value " << value << endl;
	for (int i = 0; i < count; ++i) {
		all[i]->set(value);
	}
}

int main() {
	LimitDetector *all[] = {
		new IsOutOfRange("on when out of range 9..12", 9, 12),
		new RaisesOver("on when raising over 3", 3),
		new RaisesOverPulse("pulses when crossing 3", 3),
		new FallsUnder("on when falling under 7", 7)
	};

	int value = 0;
	while (value++ < 15)
		send_all(all, sizeof all / sizeof all[0], value);
	while (--value >= 0)
		send_all(all, sizeof all / sizeof all[0], value);
}
