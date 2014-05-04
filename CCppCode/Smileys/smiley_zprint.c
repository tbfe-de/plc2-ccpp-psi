/*
 * Print an ASCI-art picture from initialised data.
 *
 * Compile: g++ smiley_zprint1.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <stdio.h>

const int width = 25;
const int height = 14;
unsigned char pic_zdata[] = {
        0x00,0xfe,0x00,0x80,0x01,0x0c,0x40,0x00,0x40,0x20,0x0c,0x18,
        0x22,0x18,0x31,0x28,0x00,0x02,0x60,0x00,0x04,0xc0,0x00,0x08,
        0x80,0x41,0x00,0x04,0x05,0x03,0x06,0x11,0xf8,0x03,0x81,0x00,
        0x80,0x00,0x0c,0x60,0x00,0xc0,0x1f,0x00
};

int main() {
	int k = 0;
	for (int i = 0; i < height; ++i) {
		for (int j = 0; j < width; ++j) {
#if 0
			const int effidx = (i*width + j)/8; 		/* effective index */
			const int bitpos = (k++ % 8);			/* bit position */
			const unsigned char mask = (1 << bitpos);	/* bit to mask out */
			const int prtmark = pic_zdata[effidx] & mask;	/* print marker ? */
			putchar(prtmark ? '*' : ' ');
#else
			putchar((pic_zdata[(i*width + j)/8] & (1 << (k++ % 8))) ? '*' : ' ');
#endif
		}
		putchar('\n');
	}
}
