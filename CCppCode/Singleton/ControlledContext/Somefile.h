#include <string>
#include <iostream>
using namespace std;

class Some {
	friend class Context;
	string name;
	Some(const string &n) : name(n) {
		cout << "Some::Some" << endl;
	}
	~Some() {
		cout << "Some::~Some" << endl;
	}
public:
	string getName() const { return name; }
};
