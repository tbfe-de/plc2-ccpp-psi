#ifndef Part_H
#define Part_H

#include "Composite.h"

struct Part {
	// ...
	Composite &holder;
public:
	Part(Composite *c) : holder(*c) {}
};

#endif

