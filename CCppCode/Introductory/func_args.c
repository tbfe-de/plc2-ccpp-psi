/*
 * This is an example for a function with arguments.
 *
 * Compile: gcc func_args.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <stdio.h>

void greet(const char message[]) {
	printf("%s\n", message);
}

int main() {
	greet("hello?");
	printf("... hmm, anybody there ...\n");
	greet("bye, bye!");
	/* and tip-toeing out of the door */
}
