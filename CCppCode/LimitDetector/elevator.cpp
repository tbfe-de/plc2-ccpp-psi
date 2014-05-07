#include "LimitDetector.h"

#include <iostream>
#include <string>
using namespace std;

int main() {
	
	FallsUnder lowestSafePosition("too low warn", -3);
	IsOutOfRange irregularPosition("irregular position", 1, 20);
	RaisesOver highestSafePosition("too high warn", 22);

	IsWithinRange serviceRange("is in service range", -1, -2);

	IsWithinRange atGroundFloor("is at ground floor", 1, 1);
	IsWithinRange at1stFloor("is at first floor", 10, 10);
	IsWithinRange at2ndFloor("is at second floor", 15, 15);
	IsWithinRange at3rdFloor("is at third floor", 20, 20);

	RaisesOverPulse near1stFloorUp("approaching 1st floor upwards", 8);
	RaisesOverPulse near2ndFloorUp("approaching 2nd floor upwards", 13);
	RaisesOverPulse near3rdFloorUp("approaching 3rd floor upwards", 18);

	FallsUnderPulse nearGroundFloorDown("approaching ground floor downwards", 3);
	FallsUnderPulse near1stFloorDown("approaching 1st floor downwards", 12);
	FallsUnderPulse near2ndFloorDown("approaching 2nd floor downwards", 17);

	WasOnceUnder tooCloseToGround("TOO LOW SAFETY STOP", -4);
	WasOnceOver tooCloseToRoof("TOO HIGH SAFETY STOP", 24);

	int height = 0;
	string dir, last_dir("+");
	while (cout << "direction (+|-|.): ", std::getline(cin, dir)) {
		if (!dir.empty() && dir.at(0) == '.') {
			tooCloseToGround.reset();
			tooCloseToRoof.reset();
			while (height != 0) {
				// service technican drives to height 0
				if (height > 0) --height; else ++height;
				cout << "---- checking at height " << height << endl;
				LimitDetector::set_all(height);
			}
			cout << "**** Elevator repaired ****" << endl;
			last_dir = "+";
			continue;
		}
		if (tooCloseToGround || tooCloseToRoof) {
			cout << "#### SERVICE REQUIRED ####" << endl;
			continue;
		}
		if (dir.empty())
			dir = last_dir;
		if (dir.at(0) == '+') {
			cout << "--------------- upward to " << ++height << endl;
			last_dir = dir;
		}
		else if (dir.at(0) == '-') {
			cout << "------------- downward to " << --height << endl;
			last_dir = dir;
		}
		else
			cout << "-------------- staying at " << height << endl;
		LimitDetector::set_all(height);
	}
	cout << endl;
}
