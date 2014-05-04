/*
 * This is an example for a heaviliy recursive function.
 *
 * Compile: gcc my_atol.c
 * Execute: a.out 10 200 3000 -444
 *	    a.out 9223372036854775807
 *	    a.out -9223372036854775808
 *          (should print the values)
 *
 *
 * (Above instructions valid for Unix/Linux only.)
*/
extern int printf(const char*, ...);

long atol(const char *s) {
	long result = 0;
	const int minus = (*s == '-');
	if (minus) ++s;
	while ('0' <= *s && *s <= '9')
		result = 10*result - (*s++ - '0');
	return !minus ? -result : result;
}

int main(int argc, const char *argv[]) {
	while (*++argv) {
		const long result = atol(*argv);
		printf("%ld\n", result);
	}
	return 0;
}
