#include <iostream>
using namespace std;

#include "Somefile.h"

class Other {
public:
	Other() {
		cout << "Other::Other" << endl;
		cout << s.getName() << endl;
	}
	~Other() {
		cout << "Other::~Other" << endl;
	}
	void m() {
		cout << "Other::m" << endl;
	}
};

extern Other o;
