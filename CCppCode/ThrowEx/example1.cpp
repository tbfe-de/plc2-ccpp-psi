/*
 * This demonstrates some basics of exceptions (throw and catch)
 *
 * Compile: g++ example1.cpp
 * Execute: a.out
 *
 * (Above instructions are for Unix/Linux only.)
*/

#include <stdexcept>

// classe thrown in case of various errors
//
class Err : public std::runtime_error {
public:
	Err(const char *t) : std::runtime_error(t) {}
};
class Err1 : public Err {
public:
	Err1() : Err("Err1") {}
};
class Err2 : public Err {
public:
	Err2() : Err("Err2") {}
};

// This class has member functions that actually throw
//
class Demo {
	const int xc;
public:	
	// initialize xc to make or not make members throw
	Demo(int x) : xc(x) {}

	// for demo purposes, m1 throws if xc == 1
	void m1() {
		// ...
		if (xc == 1) throw Err1();
		// ...
	}

	// for demo purposes, m2 throws if xc == 2
	void m2() {
		// ...
		if (xc == 2) throw Err2();
		// ...
	}
};

#include <cassert>
#include <cstring>

int main() {

	// Test with an object that never throws
	//
	try {
		Demo a(0);	// should never throw
		a.m1();
		a.m2();
	}
	catch (...) {
		assert(false);
	}
	
	// Test with an object that throws in m1
	//
	try {
		Demo a(1);
		a.m2();
		a.m1();
		assert(false);	// should not be reached
	}
	catch (Err &e) {
		assert(std::strcmp(e.what(), "Err1") == 0);
	}
	catch (...) {
		assert(false);
	}
	
	// Test with an object that throws in m2
	//
	try {
		Demo a(2);
		a.m1();
		a.m2();
		assert(false);	// should not be reached
	}
	catch (Err &e) {
		assert(std::strcmp(e.what(), "Err2") == 0);
	}
	catch (...) {
		assert(false);
	}
	
}
