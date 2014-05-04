/*
 * This programs throws a dice each time you call it.
 *
 * Compile: gcc dice_rand.c
 * Execute: a.out (throws 1 to 6)
 *          a.out N (throws 1 to N)
 *          a.out M N (throws M to N)
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int dice(int from, int to) {
	return from + (int)(rand() % (to - from + 1));
}

int main(int argc, char *argv[]) {
	srand((unsigned int) time(NULL));
	switch (argc) {
	case 1: printf("%d\n", dice(1, 6));
		return EXIT_SUCCESS;
	case 2: printf("%d\n", dice(1, atoi(argv[1])));
		return EXIT_SUCCESS;
	case 3: printf("%d\n", dice(atoi(argv[1]), atoi(argv[2])));
		return EXIT_SUCCESS;
	}
	fprintf(stderr, "Usage: %s [[<from>] <to>]\n", argv[0]);
	return EXIT_FAILURE;
}
