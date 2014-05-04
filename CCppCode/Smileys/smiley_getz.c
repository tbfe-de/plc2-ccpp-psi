/*
 * Prepare ASCI-art picture as initialised data structure.
 *
 * Compile: gcc smiley_getz.cpp
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
	int bitpos = 0;		/* temporary for bit position */
	unsigned char zc = 0;	/* temporary for bit compression */
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
	printf("const int width = %d;\n", width);
	printf("const int height = %d;\n", height);
	printf("unsigned char pic_zdata[] = {\n        ");
	for (int i = 0; i < picfilled - &picture[0]; ++i) {
		if (picture[i] == '*') {
			zc |= (1 << (bitpos % 8));
			++bitpos;
			++tw;
		}
		else if (picture[i] != '\n') {
			++bitpos;
			++tw;
		}
		else {
			while (tw < width) {
				++bitpos;
				if ((bitpos % 8) == 0) {
					printf("0x%02x,", (unsigned int)zc);
					zc = 0;
					if ((bitpos % (8*12)) == 0)
						printf("\n        ");
				}
				++tw;
			}
			tw = 0;
			continue;
		}
		if ((bitpos % 8) == 0) {
			printf("0x%02x,", (unsigned int)zc);
			zc = 0;
			if ((bitpos % (8*12)) == 0)
				printf("\n        ");
		}
	}
	if ((bitpos % 8) != 0) {
		printf("0x%02x\n", (unsigned int)zc);
		zc = 0;
	}
	printf("}\n");
}
