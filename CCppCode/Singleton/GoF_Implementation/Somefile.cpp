#include "Somefile.h"

Some *Some::instance;

Some &Some::getSome() {
	if (!instance)
		instance = new Some("hello, world");
	return *instance;
}
