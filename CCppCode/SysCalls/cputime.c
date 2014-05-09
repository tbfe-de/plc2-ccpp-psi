#include "cputime.h"

#include <stdarg.h>
#include <stdio.h>
#include <unistd.h>

void cputime(const char *message, ...) {
	va_list ap;
	static int firstcall = 1;
	static clock_t start;
	static struct tms last;
	if (firstcall) {
		start = times(&last);
		firstcall = 0;
	}
	struct tms current;
	clock_t now = times(&current);
	const long clk_tck = sysconf(_SC_CLK_TCK);
	printf("at %05.2f: sys=%ld, usr=%ld (msec) ## ",
		(double)(1e0 * (now - start) / clk_tck),
		(long)(1e3 * (current.tms_stime - last.tms_stime) / clk_tck),
		(long)(1e3 * (current.tms_utime - last.tms_utime) / clk_tck),
		message
	);
	va_start(ap, message);
	vprintf(message, ap);
	printf("\n");
	last = current;
}
