/*
 * In this example the throwing behavior of a class is adapted
 * by virtual member functions with different implementations
 * in two derived classes.
 *
 * Compile: g++ example2.cpp
 * Execute: a.out
 *
 * (Above instructions are for Unix/Linux only.)
*/

#include <cassert>
#include <stdexcept>

// class thrown in case of various errors
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

// In case of problems this class doesn't throw directly but calls
// virtual member functions
//
class Demo {
	const int xc;
	virtual void throw_Err1() =0;
	virtual void throw_Err2() =0;
	
public:	
	Demo(int x) : xc(x) {}

	// for demo purposes, m1 throws if xc == 1
	void m1() {
		// ...
		if (xc == 1) throw_Err1();
		// ...
	}

	// for demo purposes, m1 throws if xc == 2
	void m2() {
		// ...
		if (xc == 2) throw_Err2();
		// ...
	}
};

// this dervied class implements the members to actually throw
//
class Demo_Throwing : public Demo {
private:
	virtual void throw_Err1() {
		throw Err1();
	}
	virtual void throw_Err2() {
		throw Err2();
	}

public:
	Demo_Throwing(int x) : Demo(x) {}
};

class Demo_NoThrow : public Demo {

// this dervied class implements the members to do nothing
//
private:
	virtual void throw_Err1() {
		/*do nothing*/
	}
	virtual void throw_Err2() {
		/*do nothing*/
	}

public:
	Demo_NoThrow(int x) : Demo(x) {}
};

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
