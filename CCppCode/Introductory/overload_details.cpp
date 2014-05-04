/*
 * This demo illustrates some details of the overloading mechanism.
 *
 * Compile: g++ -std=c++0x overload_details.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/
#include <cassert>
#include <iostream>
using namespace std;

void f1(int x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

void f2(int &x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

void f3(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/

void f4(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/
void f4(int &x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

void f5(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/
void f5(int &&x)	{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

void f6(int &x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }
void f6(int &&x)	{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

void f7(int &x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }
void f7(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/
void f7(int &&x)	{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

/* Note 1: any attempt to alter the argument would be flagged as error!
 *
 * Note 2: while the above combinations may all have some valid reason
 * the following ones are rather contrieved (or may happen accidentally
 * and unintended, so showing them here and resolving them in the main
 * program is actually more abrain teaser as of practical importance.
*/
 
void f8(int x)		{ cout << __PRETTY_FUNCTION__ << endl; ++x; }
void f8(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/

void f9(const int &)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/
void f9(const int &&)	{ cout << __PRETTY_FUNCTION__ << endl; } /*1*/
void f9(int &&x)	{ cout << __PRETTY_FUNCTION__ << endl; ++x; }

const int h() { return -1; }

int &g() { static int z; return z; }



int main() {
	int v = 0;
	const int cv = 42;

#ifndef BRAIN_TEASER
	
	// a function with value argument may be called with
	f1(0);		// ... a literal constant ...
	f1(cv);		// ... an unmodifiable variable  ...
	f1(v + 3);	// ... an expression ...
	f1(v);		// ... or a modifiable variable ...
	f1(h());	// ... or a function returning a value ...
	f1(g());	// ... or a function returning a non-const reference ...
	assert(v == 0);	// ... which of course is not changed
cout << "----------------------\n";
	// a function with a non-const reference argument may
//	f2(0);
//	f2(cv);
//	f2(v + 3);
//	f2(h());
	f2(v);		// ... ONLY be called with a variable ...
	assert(v == 1);	// ... which accordingly gets changed ...
	f2(g());	// ... or a function returning a non-const reference
cout << "----------------------\n";
	// a function with a const reference argument may be called with
	f3(0);		// ... a constant ...
	f3(cv);		// ... a constant ...
	f3(v + 3);	// ... an expression ...
	f3(v);		// ... or a variable
	f3(h());	// ... or a function returning a value ...
	f3(g());	// ... or a function returning a non-const reference ...
cout << "----------------------\n";
	// a function that overloads const and non-const references
	f4(0);		// ... selects the const overload here ...
	f4(cv);		// ... as well as here ...
	f4(v + 3);	// ... and here ...
	f4(v);		// ... but the non-const overload here ...
	assert(v == 2);	// ... (now the changed value)
	f4(h());	// ... the const reference here again ...
	f4(g());	// ... and the non const reference here
cout << "----------------------\n";
	// a function that overloads both, const and rvalue references
	f5(42);		// ... selects the rvalue reference here ...
	f5(cv);		// ... selects the const overload here
	f5(v + 3);	// ... again selects the rvalue reference here ...
	f5(v);		// ... again selects the const reference here ...
	f5(h());	// ... again selects the rvalue reference overload here ...
	f5(g());	// ... again the const reference overload here
	f5(g()+1);	// ... and again the rvalue reference overload here
cout << "----------------------\n";
	// a function that overloads both, non-const and rvalue references
	f6(42);		// ... selects the rvalue reference here ...
	f6(v + 3);	// ... and here ...
	f6(v);		// ... uses the non-const overload only here ...
//	f6(cv);		// ... does NOT know which one to prefer here ...
	f6(cv+0);	// ... but (obviously) it does know here
	f6(h());	// ... again selects the rvalue reference overload here ...
	f6(g());	// ... again the const reference overload here
	f6(g()+1);	// ... and again the rvalue reference overload here
cout << "----------------------\n";
	// a function that overloads all, const, non-const and rvalue references
	f7(42);		// ... selects the rvalue reference overload here ...
	f7(cv);		// ... selects the const reference overload here ...
	f7(v + 3);	// ... again the rvalue reference overload here ...
	f7(h());	// ... and here ...
	f7(g()+1);	// ... and here ...
	f7(v);		// ... and uses the non-const reference overload only here
	f7(g());	// ... and here

#else
	// Interrestingly, overloads of a value arguments and const references may
	// coexist but the compiler cannot prefer any overload in the all of the
	// following calls:
//	f8(42);
//	f8(cv);
//	f8(v + 3);
//	f8(v);	
//	f8(h());
//	f8(g());
	// Furthermore, as a rather unusual combination, overloads of const references
	// can coexist with const and non-const rvalue references but there seems to
	// be no situation in which the const rvalue reference would be preferred over
	// one of the others (if you find one, let me know).
	f9(42);	
	f9(v + 3);
	f9(v);	
	f9(cv);	
	f9(cv+0);
	f9(g());
	f9(h());
#endif
}
