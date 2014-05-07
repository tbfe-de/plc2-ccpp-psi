#ifndef Part_H
#define Part_H

class Composite;

struct Part {
	// ...
	Composite &holder;
public:
	Part(Composite *c);
};

#include "Composite.h"

inline
Part:: Part(Composite *c) : holder(*c) {}

#endif

