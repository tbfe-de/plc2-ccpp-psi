/*
 * Prepare ASCI-art picture as initialised data structure.
 *
 * Compile: gcc smiley_get.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <stdio.h>

char picture[10000];
char *picfilled = &picture[0];

int main(int argc, char *argv[]) {
	int height = 0;		/* height of picture read */
	int width = 0;		/* width of picture read */
	int tw = 0;		/* temporary for width */
	int c = EOF;		/* temporary for input */
	FILE *picfp = NULL;	/* file to read picture */
	if (argc != 2) {
		fprintf(stderr, "Usage: %s <picture-file>\n", argv[0]);
		return 1;
	}
	if ((picfp = fopen(argv[1], "r")) == NULL) {
		fprintf(stderr, "cannot open picture-file: %s\n", argv[1]);
		return 2;
	}
	while ((c = getc(picfp)) != EOF) {
		if ((picfilled - &picture[0]) == (sizeof picture / sizeof picture[0]))
			break;
		*picfilled++ = c;
		if (c != '\n')
			++tw;
		else {
			if (tw > width)
				width = tw;
			tw = 0;
			++height;
		}
	}
	fclose(picfp);
	if (c != EOF) {
		fprintf(stderr, "picture too large\n");
		return 3;
	}
	tw = 0;
	printf("int pic_data[%d][%d] = {\n", height, width);
	for (int i = 0; i < picfilled - &picture[0]; ++i) {
		if (tw == 0) {
			printf("       { ");
		}
		if (picture[i] == '*') {
			printf("1,");
			++tw;
		}
		else if (picture[i] != '\n') {
			printf("0,");
			++tw;
		}
		else {
			while (tw < width) {
				printf("0,");
				++tw;
			}
			tw = 0;
			printf("},\n");
		}
	}
	printf("};\n");
}
