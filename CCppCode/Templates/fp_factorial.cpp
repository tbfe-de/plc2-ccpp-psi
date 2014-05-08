/*
 * An example for "Compiletime Meta-Programming"
 *
 * Compile: g++ -std=c++0x fp_factorial.cpp
 * Execute: a.out
 *
*/

template<long long N>
struct fp_factorial {
	static const long long result = N * fp_factorial<N-1>::result;
};

template<>
struct fp_factorial<0> {
	static const long long result = 1;
};

#include <iostream>
int main() {
	std::cout << fp_factorial<5>::result << std::endl;
}
