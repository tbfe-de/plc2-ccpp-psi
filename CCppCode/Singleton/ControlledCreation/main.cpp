#include <iostream>
#include "Otherfile.h"

void application(Other &o) {
	std::cout << "application started" << std::endl;
	o.m();
	std::cout << "application ended" << std::endl;
}

int main() {
	Some s("hello, world");
	Other o(s);
	application(o);
}
