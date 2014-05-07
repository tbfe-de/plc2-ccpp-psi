#include "Otherfile.h"

Other *Other::instance;

Other &Other::getOther() {
	if (!instance)
		instance = new Other();
	return *instance;
}
