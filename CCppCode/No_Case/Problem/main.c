enum Color { RED, GREEN, BLUE };

const char *name(enum Color c) {
	switch(c) {
	case RED: return "red";
	case BLUE: return "blue";
	case GREEN: return "green";
	default: return "no such color";
	}
}

#include <iostream>
int main() {
	for (Color col : { BLUE, RED, GREEN })
		std::cout << name(col) << std::endl;
}
