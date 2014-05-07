#include <iostream>
using namespace std;

#include "Somefile.h"

class Other {
	Other() {
		cout << "Other::Other" << endl;
		cout << Some::getSome().getName() << endl;
	}
	~Other() {
		cout << "Other::~Other" << endl;
	}
public:
	static Other &getOther();
	void m() {
		cout << "Other::m" << endl;
	}
};

extern Other o;
