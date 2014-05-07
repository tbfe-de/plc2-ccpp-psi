#include "FixedString.h"

void foo(const FixedString &fs) {
	char c = fs[0];
	// ... = fs.operator[](0) const;
}

void bar(FixedString &fs) {
	fs[0] = 'H';
	// fs.operator[](0) = 'H'
}

#include <iostream>

int main() {
	using namespace std;
	FixedString greet = "hello? ";
	FixedString yourname;
	for(int i = 1; i < 5; ++i) {
		cout << greet << "(type your name) ";
		if (!(cin >> yourname).good())
			break;
		FixedString g2 = greet;
		g2[g2.length()-2] = ':';
		g2[g2.length()-1] = i + '0';
		g2.append(' ');
		cout << (g2 += yourname) << endl;
	}
	greet = "good by\n";
	cout << greet;
}
