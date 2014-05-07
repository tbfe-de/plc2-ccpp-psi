#include <string>
#include <iostream>
using namespace std;

class Some {
	string name;
public:
	Some(const string &n) : name(n) {
		cout << "Some::Some" << endl;
	}
	~Some() {
		cout << "Some::~Some" << endl;
	}
	string getName() const { return name; }
};
