/*
 * This demo illustrates the key differences between pointers to references.
 *
 * Compile: g++ -std=c++0x ptr_vs_ref.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/
#include <cassert>

int something_modifiable = 1;
const int something_const = 42;

int main() {
	// ip now holds an address
	int *ip = &something_modifiable;

	// ir now is an alias
	int &ir = something_modifiable;

	// both can access the value
	assert(*ip == 1);
	assert(ir == 1);

	// both may modify the value
	++*ip;
	assert(*ip == 2);
	assert(ir == 2);
	++ir;
	assert(*ip == 3);
	assert(ir == 3);

	// a plain use gives ...
	assert(ip == &something_modifiable); // ... the address
	assert(ir  == something_modifiable); // ... the value

	// taking the address gives the address of the underlying value ...
	assert(&ir == &something_modifiable);

	// or the addess where the pointer is stored
//	assert(&ip == ???);	// works but we don't know against what to test...
	assert(&ip != nullptr);	// ... the only guarantee is it must be valid

	// though the rerefence is stored somewhere, we cannot find out
//	assert(&(&ir) != nullptr); // this syntax does not work

	// non-modifiable items may be referred via ...
	const int *cip = &something_const;	// ... pointers to something const
	const int &cir = something_const;	// ... as well as const references

	// testing (just to be sure)
	assert(*cip == 42);
	assert(cir == 42);

	// mixing pointers to const and non-const is possible to some degree
	cip = &something_modifiable;	// this assignment is OK
	assert(*cip == 3);		// derefenrencing may read content ...
//	*cip = 0;			// ... but cannot make modifications
	const int &cir2 = something_modifiable;	// same for references ...
	assert(cir2 == 3);			// ... access content ...
//	cir2 = 0;				// ... but no modifying

	// trying the other way round will not succeed
//	ip = &something_const;	// this DOES NOT COMPILE, because ...
//	*ip = 0;		// ... a const might be modified through it
//	int &ir2 = something_const;	// same for a reference, otherwise  ...
//	ir2 = 0;			// ... a const might be modified

	// BTW: don't confuse pointer to something const with const pointers
	int *const cpi = &something_modifiable;
	*cpi += 10;		// we can modify where the pointer points to
	int other = 12;		
//	cpi = &other;		// but we cannot change the pointer ...
	ip = &other;		// ... what we can with the non-const one
	assert(*ip == 12);	// qed.

	// Also, we can have pointers that point to pointers
	int **pp = &ip;		// this one now holds the address of ip, so
	assert(*pp == ip);	// dereferencing get's us the content of ip ...
	assert(*pp == &other);	// ... as above ...
	assert(**pp == 12);	// ... and double derefencing the content

	// In comparison, there is no such thing as a reference to a reference
	int &rr = ir;	// a reference, initialized with another reference ...
	assert(&rr == &something_modifiable); 	// ... directly refers to ...
	assert(rr == 13); 			// ... or its value (resp.)

	// references may be initialized with temporaries ...
	const int &ri2 = something_modifiable + 10;	// ... if they are const
	assert(ri2 == 23);				// qed.
//	int &ri4 = something_modifiable + 10;		// this does not work!!

	// finally C++11 introduced rvalue references, which ...
//	int &&rvi2 = something_modifiable;	// CANNOT refer to variables ...
	int &&rvi = something_modifiable + 0;	// ... but to temporaries only
}
