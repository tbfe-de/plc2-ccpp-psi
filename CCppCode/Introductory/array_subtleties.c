/*
 * This program shows some subtleties with arrays.
 *
 * Compile: gcc array_subtleties.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/
#include <stdio.h>

int main() {
	float arr[10];
	printf("&arr       : %p\n", &arr);
	printf("&arr[0]    : %p\n", &arr[0]);
	printf("arr        : %p\n", arr);
	printf("&arr + 1   : %p\n", &arr + 1);
	printf("&arr[0] + 1: %p\n", &arr[0] + 1);
	printf("arr + 1    : %p\n", arr + 1);
	printf("&arr[1]    : %p\n", &arr[1]);
	printf("&1[arr]    : %p\n", &1[arr]);
	return 0;
}
