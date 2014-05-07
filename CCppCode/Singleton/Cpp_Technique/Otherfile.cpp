#include "Otherfile.h"

Other &Other::getOther() {
	static Other o;
	return o;
}
