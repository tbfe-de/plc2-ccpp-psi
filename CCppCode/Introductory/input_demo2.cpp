/*
 * This is a minimal demo to show how to get some input.
 *
 * Compile: g++ input_demo2.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/


#include <iostream>
using namespace std;

int main() {
	cin.exceptions(ios::failbit | ios::eofbit);
	int height, width;
	cout << "enter height and width" << endl;
	try {
		cin >> height >> width;
		cout << "area is " << height * width << endl;
	}
	catch (std::ios_base::failure &) {
		cout << "invalid input" << endl;
	}
}
