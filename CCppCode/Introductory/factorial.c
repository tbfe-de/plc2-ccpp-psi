/*
 * This is an example for a recursive function.
 *
 * Compile: gcc factorial.cpp
 * Execute: a.out (prints 120 which is 5!)
 *      or: a.out N (with some integral N prints N!)
 *      or: a.out N1 N2 N3 ... (prints all factorials)
 *
 * (Above instructions valid for Unix/Linux only.)
*/
#include <stdlib.h>
#include <stdio.h>

unsigned long factorial(unsigned long n) {
	if (n == 0) return 1;
	else return n*factorial(n-1);
}

int main(int argc, const char *argv[]) {
	if (argc <= 1)
		printf("%lu\n", factorial(5uL));
	else {
		while (*++argv) {
			const unsigned long v = atol(*argv);
			printf("%lu -> %lu\n", v, factorial(v));
		}
	}
	return 0;
}
