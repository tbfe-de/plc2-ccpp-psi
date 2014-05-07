#include <iostream>
#include "Otherfile.h"

class Context {
public:
	Some &s;	// DEPENDENCY ORDER (1)
	Other &o;	// DEPENDENCY ORDER (2)
	Context() :
		s(*new Some("hello, world")),
		o(*new Other(s))
	{}
	~Context() {
		delete &o;
		delete &s;
	}
};

void application(Context &ctx) {
	std::cout << "application started" << std::endl;
	ctx.o.m();
	std::cout << "application ended" << std::endl;
}

int main() {
	Context ctx;
	application(ctx);
}
