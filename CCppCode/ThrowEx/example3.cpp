/*
 * In this example the throwing behavior of a class is adapted
 * by functions inherited from a base class that is specified
 * via an template argument.
 *
 * Compile: g++ example3.cpp
 * Execute: a.out
 *
 * (Above instructions are for Unix/Linux only.)
*/
#include <stdexcept>

// class thrown in case of various errors
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

template<class ThrowPolicy>
class Demo : private ThrowPolicy {
	const int xc;
	using ThrowPolicy::throw_Err1;
	using ThrowPolicy::throw_Err2;
	
public:	
	Demo(int x) : xc(x) {}

	// for demo purposes only, m1 throws if xc == 1
	void m1() {
		// ...
		if (xc == 1) throw_Err1();
		// ...
	}

	// for demo purposes only, m1 throws if xc == 2
	void m2() {
		// ...
		if (xc == 2) throw_Err2();
		// ...
	}
};

class Throwing_Policy {
protected:
	void throw_Err1() {
		throw Err1();
	}
	void throw_Err2() {
		throw Err2();
	}
};
typedef Demo<Throwing_Policy> Demo_Throwing;

class NoThrow_Policy {
protected:
	void throw_Err1() {
		/*do nothing*/
	}
	void throw_Err2() {
		/*do nothing*/
	}
};

typedef Demo<NoThrow_Policy> Demo_NoThrow;

#include <cassert>
#include <cstring>

int main() {

	try {
		Demo_Throwing a(0);	// should never throw
		a.m1();
		a.m2();
	}
	catch (...) {
		assert(false);
	}
	
	try {
		Demo_Throwing a(1);	// should throw in m1
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

	try {
		Demo_Throwing a(2);	// should throw in m2
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
//	-----------------------------------------------------------------
	try {
		Demo_NoThrow a(0);	// should never throw
		a.m1();
		a.m2();
	}
	catch (...) {
		assert(false);
	}
	
	try {
		Demo_NoThrow a(1);	// should ignore throw in m1
		a.m1();
		a.m2();
	}
	catch (...) {
		assert(false);
	}
	
	try {
		Demo_NoThrow a(2);	// should ignore throw in m2
		a.m1();
		a.m2();
	}
	catch (...) {
		assert(false);
	}
}
