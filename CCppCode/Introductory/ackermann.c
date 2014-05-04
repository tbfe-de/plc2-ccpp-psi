/*
 * This is an example for a heaviliy recursive function.
 *
 * Compile: gcc ackermann.c
 * Execute: a.out 3 4 prints 125
 *
 * (Above instructions valid for Unix/Linux only.)
*/
#include <stdlib.h>
#include <stdio.h>

int ackermann(int m, int n) {
    if (m == 0) return n + 1;
    else if (n == 0) return ackermann(m - 1, 1);
    else return ackermann(m - 1, ackermann(m, n - 1));
}

int main(int argc, const char *argv[]) {
	if (argc != 3) {
		fprintf(stderr, "Usage: %s <m> <n>\n", argv[0]);
		return EXIT_FAILURE;
	}
	const int first = atoi(argv[1]);
	const int second = atoi(argv[2]);
	const int result = ackermann(first, second);
	printf("ackermann(%d, %d) -> %d\n", first, second, result);
	return EXIT_SUCCESS;
}
