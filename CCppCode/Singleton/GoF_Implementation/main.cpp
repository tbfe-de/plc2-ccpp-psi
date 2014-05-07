#include <iostream>
#include "Otherfile.h"

void application() {
	std::cout << "application started" << std::endl;
	Other::getOther().m();
	std::cout << "application ended" << std::endl;
}

int main() {
	application();
}
