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
	printf("sizeof (float)      : %d\n", (int) sizeof (float));
	printf("sizeof (float) + 1  : %d\n", (int) sizeof (float) + 1);
	printf("sizeof arr[0]       : %d\n", (int) sizeof arr[0]);
	printf("sizeof arr[0] + 1   : %d\n", (int) sizeof arr[0] + 1);
	printf("sizeof (arr[0] + 1) : %d\n", (int) sizeof (arr[0] + 1));
	printf("sizeof &arr         : %d\n", (int) sizeof &arr);
	printf("sizeof &arr + 1     : %d\n", (int) sizeof &arr + 1);
	printf("sizeof (&arr + 1)   : %d\n", (int) sizeof (&arr + 1));
	printf("sizeof &arr[0]      : %d\n", (int) sizeof &arr[0]);
	printf("sizeof &arr[0] + 1  : %d\n", (int) sizeof &arr[0] + 1);
	printf("sizeof (&arr[0] + 1): %d\n", (int) sizeof (&arr[0] + 1));
	return 0;
}
