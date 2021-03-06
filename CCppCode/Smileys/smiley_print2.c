/*
 * Print an ASCI-art picture from initialised data.
 *
 * Compile: gcc smiley_print2.c
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <stdio.h>

int pic_data[14][25] = {
       { 0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,},
       { 0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,},
       { 0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,},
       { 0,0,1,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,},
       { 0,1,0,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,0,0,1,0,},
       { 1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,},
       { 1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,},
       { 1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,},
       { 1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,},
       { 0,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,},
       { 0,0,1,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,1,0,0,},
       { 0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,},
       { 0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,},
       { 0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,},
};

void printer(int pic[], int height, int width) {
	for (int i = 0; i < height; ++i) {
		for (int j = 0; j < width; ++j)
			putchar(pic[i*width + j] ? '*' : ' ');
		putchar('\n');
	}
}

int main() {
	printer(pic_data[0], 14, 25);
}
