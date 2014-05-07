#include <iostream>
using namespace std;

#include "Somefile.h"

class Other {
	friend class Context;
	Other(const Some &s) {
		cout << "Other::Other" << endl;
		cout << s.getName() << endl;
	}
	~Other() {
		cout << "Other::~Other" << endl;
	}
public:
	void m() {
		cout << "Other::m" << endl;
	}
};
