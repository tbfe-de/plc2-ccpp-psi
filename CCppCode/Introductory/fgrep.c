/*
 * This is a rudimentary fgrep-like untility to search a text file for lines
 * containing a given pattern
 *
 * Compile: gcc -std=c99 fgrep.c
 * Execute: a.out <pattern> [<file> ...]
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char line_buffer[2000];

const char *found_here(const char* const pattern, FILE *fp, int *const lnum, int *const lpos) {
	assert(pattern != NULL);
	const int pattern_length = strlen(pattern);
	if (lpos) *lpos = 0;
	while (fgets(line_buffer, sizeof line_buffer, fp)) {
		int line_length = strlen(line_buffer);
		if (line_length > 0 && line_buffer[line_length-1] == '\n') {
			line_buffer[--line_length] = '\0';
			if (lnum) ++*lnum;
		}
		for (int i = 0; i + pattern_length <= line_length; ++i) {
			if (strncmp(pattern, line_buffer+i, pattern_length) == 0) {
				if (lpos) *lpos = i;
				return line_buffer;
			}
		}
	}
	return NULL;
}

int main(int argc, char *argv[]) {
	if (argc < 2) {
		fprintf(stderr, "Usage: %s <pattern> [<file> ...]\n", argv[0]);
		return EXIT_FAILURE;
	}
	int line = 0;
	int pos = 0;
	const char *lp;
	if (argc == 2) {
		while (lp = found_here(argv[1], stdin, &line, &pos))
			printf("[%d:%d] %s\n", line, pos, lp);
	}
	else {
		const char *const pattern = argv[1];
		while (*++argv) {
			FILE *const fp = fopen(*argv, "r");
			if (fp == NULL) {
				fprintf(stderr, "cannot open file: %s\n", *argv);
				continue;
			}
			line = 0;
			while (lp = found_here(pattern, fp, &line, &pos))
				printf("%s[%d:%d] %s\n", *argv, line, pos, lp);
			fclose(fp);
		}
	}

	return EXIT_SUCCESS;
}
