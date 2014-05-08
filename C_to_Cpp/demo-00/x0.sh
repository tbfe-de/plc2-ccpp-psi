#!/bin/bash
o=0
for n in 1 2 3 4 5 6 7 8 9
do
	gcc -c -O$o -DX=$n x0.c -o x0-Optimization_$o-repetitions_$n.o
done
size x0-*.o
