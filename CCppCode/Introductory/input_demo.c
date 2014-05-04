/*
 * This is a minimal demo to show how to get some input.
 *
 * Compile: gcc input_demo.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/


#include <stdio.h>

int main() {
	int height, width;
	printf("enter height and width\n");
	scanf("%d %d", &height, &width);
	printf("area is %d\n", height * width);
	return 0;
}
