/*
 * This is the classical swap example in C++ (with references)
 *
 * Compile: gcc swap_xor.c
 * Execute: a.out
 *
 * For analysing space requirements or assembler output you may also compile
 * with -DNOCALL or -DNOMAIN to exclude the call or even the main program:
 *
 * gcc -c -DNOCALL (results in swap_xor.o) only swap function
 * gcc -S -DNOCALL (results in swap_xor.s) assembler output
 *
 * gcc -c -DNOMAIN (results in swap_xor.o) swap function plus call from bar
 * gcc -S -DNOMAIN (results in swap_xor.s) dto. but assembler output
 *
 * (Above instructions valid for Unix/Linux only.)
*/

void swap(int *px, int *py) {
	*px ^= *py;
	*py ^= *px;
	*px ^= *py;
}

#ifndef NOMAIN

#include <stdio.h>

int main() {
	int x = 1, y = 20;
	printf("prior swap: x=%d, y=%d\n", x, y);
	swap(&x, &y);
	printf("after swap: x=%d, y=%d\n", x, y);
	return 0;
}

#endif
