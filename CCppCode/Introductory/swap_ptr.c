/*
 * This is the classical swap example in C (with pointers)
 *
 * Compile: gcc swap_ptr.c
 * Execute: a.out
 *
 * For analysing space requirements or assembler output you may also compile
 * with -DNOCALL or -DNOMAIN to exclude the call or even the main program:
 *
 * gcc -c -DNOCALL (results in swap_ptr.o) only swap function
 * gcc -S -DNOCALL (results in swap_ptr.s) assembler output
 *
 * gcc -c -DNOMAIN (results in swap_ptr.o) swap function plus call from bar
 * gcc -S -DNOMAIN (results in swap_ptr.s) dto. but assembler output
 *
 * (Above instructions valid for Unix/Linux only.)
*/

void swap(int *px, int *py) {
	const int tmp = *px;
	*px = *py;
	*py = tmp;
}

#ifndef NOCALL

int x = 1, y = 20;

void bar() {
	swap(&x, &y);
}

#ifndef NOMAIN

#include <stdio.h>

int main() {
	printf("prior swap: x=%d, y=%d\n", x, y);
	bar();
	printf("after sawp: x=%d, y=%d\n", x, y);
	return 0;
}

#endif /* NOMAIN */
#endif /* NOCALL */
