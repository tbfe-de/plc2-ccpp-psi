#!/bin/bash
for o in 0 1 2 3
do
	gcc -c -O$o x4.c -o x4-Optimization_$o-Base.o
done
o=0
for n in 1 2 3 4 5 6 7 8 9
do
	gcc -c -O$o -DX=$n x4.c -o x4-Optimization_$o-with_calls_$n.o
done
size x4-*.o
