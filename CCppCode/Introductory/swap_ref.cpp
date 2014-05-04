/*
 * This is the classical swap example in C++ (with references)
 *
 * Compile: g++ swap_ref.c
 * Execute: a.out
 *
 * For analysing space requirements or assembler output you may also compile
 * with -DNOCALL or -DNOMAIN to exclude the call or even the main program:
 *
 * gcc -c -DNOCALL (results in swap_ref.o) only swap function
 * gcc -S -DNOCALL (results in swap_ref.s) assembler output
 *
 * gcc -c -DNOMAIN (results in swap_ref.o) swap function plus call from bar
 * gcc -S -DNOMAIN (results in swap_ref.s) dto. but assembler output
 *
 * (Above instructions valid for Unix/Linux only.)
*/

void swap(int &rx, int &ry) {
	const int tmp = rx;
	rx = ry;
	ry = tmp;
}

#ifndef NOCALL

int x = 1, y = 20;

void bar() {
	swap(x, y);
}

#ifndef NOMAIN

#include <stdio.h>

int main() {
	printf("prior swap: x=%d, y=%d\n", x, y);
	bar();
	printf("after swap: x=%d, y=%d\n", x, y);
	return 0;
}

#endif /* NOMAIN */
#endif /* NOCALL */
