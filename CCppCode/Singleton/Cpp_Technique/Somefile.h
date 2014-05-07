#include <string>
#include <iostream>
using namespace std;

class Some {
	string name;
	Some(const string &n) : name(n) {
		cout << "Some::Some" << endl;
	}
	~Some() {
		cout << "Some::~Some" << endl;
	}
public:
	static Some &getSome();
	string getName() const { return name; }
};
