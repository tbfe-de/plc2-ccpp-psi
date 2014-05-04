/*
 * A program to show how to avoid conversion warnings with C casts.
 *
 * Compile: gcc -Wconversion no-warnings.c
 *
 * (Above instructions valid for Unix/Linux only.)
 *
 * Note: This program is not really meant to be executed, it is just to
 * demonstrate how conversion warnings may be avoided.
*/

int foo(int x, long y) {

	short a = (short)y;

	int b = (int)3.14;

	float f = (float)y;
	y = (long)f;	
	
	double d = (double)y;
	y = (long)d;
}

int main() {
	/* Only C will warn about the missing return value */
}
