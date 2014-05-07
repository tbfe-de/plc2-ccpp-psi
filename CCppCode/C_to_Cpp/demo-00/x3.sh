#!/bin/bash
for o in 0 1 2 3
do
	gcc -c -O$o       x3.c	-o x3-Optimization_$o-Base.o
	gcc -c -O$o -DV=1 x3.c	-o x3-Optimization_$o-Variant_if_else.o
	gcc -c -O$o -DV=2 x3.c	-o x3-Optimization_$o-Variant_local_const.o
	gcc -c -O$o -DV=3 x3.c	-o x3-Optimization_$o-Variant_local_nonconst.o
done
o=2
for n in 1 2 3 4 5 6 7 8 9
do
	gcc -c -O$o -DX=$n x3.c -o x3-Optimization_$o-with_calls_$n.o
done
size x3-*.o
