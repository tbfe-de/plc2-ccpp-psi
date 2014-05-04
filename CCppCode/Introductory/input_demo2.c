/*
 * This is a minimal demo to show how to get some input.
 *
 * Compile: gcc input_demo2.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/


#include <stdio.h>

int main() {
	int height, width;
	printf("enter height and width\n");
	if (scanf("%d %d", &height, &width) == 2) {
		printf("area is %d\n", height * width);
	}
	else {
		printf("invalid input\n");
	}
	return 0;
}
