/*
 * A program to show a number of typical conversion warnings.
 *
 * Compile: gcc -Wconversion warnings.c
 *      or: g++ -Wconversion warnings.c
 *
 * (Above instructions valid for Unix/Linux only.)
 *
 * Note: This program is not really meant to be executed, it is just to
 * demonstrate what a compiler might warn about. There are counterparts
 * no-warnings.c and no-warnings.cpp which will fix those issues.
*/

int foo(int x, long y) {

	short a = y;

	int b = 3.14;

	float f = y;
	y = f;	
	
	double d = y;
	y = d;
}

int main() {
	/* Only C will warn about the missing return value */
}
