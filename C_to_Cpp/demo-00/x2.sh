#!/bin/bash
for o in 0 1 2 3
do
	gcc -c -O$o x2.c -o x2-Optimization_$o-Base.o
done
o=2
for n in 1 2 3 4 5 6 7 8 9
do
	gcc -c -O$o -DX=$n x2.c -o x2-Optimization_$o-with_calls_$n.o
done
size x2-*.o
