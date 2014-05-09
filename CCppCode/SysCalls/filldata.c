#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "cputime.h"

#define NELEM (10*1000*1000)
#define SLEEP 3

unsigned data[NELEM], data2[NELEM];

int main() {
	cputime("started up");
	int i;
	for (i = 0; i < NELEM; ++i)
		data[i] = rand();
	cputime("filled with %d random values", NELEM);
	sleep(SLEEP);
	cputime("did nothing for %d seconds", SLEEP);
	memcpy(data2, data, sizeof data);
	cputime("copied %lu bytes with memcpy", (unsigned long) sizeof data);
	memcpy(data2, data, sizeof data);
	cputime("copied %lu bytes with memmove", (unsigned long) sizeof data);
}
