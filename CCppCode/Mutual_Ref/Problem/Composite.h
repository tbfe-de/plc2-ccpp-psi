#ifndef Composite_H
#define Composite_H

#include "Part.h"

class Composite {
	// ...
	Part b;
public:
	// the part knows its holder
	Composite() : b(this) {}
};
#endif
