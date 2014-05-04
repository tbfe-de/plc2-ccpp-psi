/*
 * Print a table of trigonomatric functions.
 *
 * Compile: gcc -std=c99 mathfunc.c -ml
 * Execute: a.out <from> <to> [<step>]
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

const double EPS = 1e-8;

double radconv(double deg) {
	static const double PI_by_180 = 2*acos(0.0) / 180.0;
	return deg*PI_by_180;
}

int main(int argc, char *argv[]) {
	const double PI = 2*acos(0.0);
	if (argc < 3) {
		fprintf(stderr, "Usage: %s <from> <to> [<step>]\n", argv[0]);
		return EXIT_FAILURE;
	}
	double from = atof(argv[1]);
	double to = atof(argv[2]);
	double step = (to - from) / 10;
	if (argc > 3) step = atof(argv[3]);
	if ((from > to && step > 0.0)
	 || (from < to && step < 0.0)) step = -step;

	printf("Angle (deg)|     sin   |     cos   |    tan    |\n");
	double v_deg = from - step;
	do {
		double const v = radconv(v_deg += step);
		printf("%11g|%11g|%11g|%11g|\n", v_deg, sin(v), cos(v), tan(v));
	} while (fabs(v_deg - to) > EPS);
	
	return EXIT_SUCCESS;
}
