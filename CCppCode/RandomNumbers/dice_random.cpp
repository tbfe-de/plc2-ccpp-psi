/*
 * This programs throws a dice each time you call it.
 *
 * Compile: g++ -std=c++0x dice_random.cpp
 * Execute: a.out (throws 1 to 6)
 *          a.out N (throws 1 to N)
 *          a.out M N (throws M to N)
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <cstdio>
#include <cstdlib>
#include <random>
using namespace std;

int dice(int from, int to) {
	static default_random_engine e(random_device{}());
	return uniform_int_distribution<int>(from, to)(e);
}

int main(int argc, char *argv[]) {
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
