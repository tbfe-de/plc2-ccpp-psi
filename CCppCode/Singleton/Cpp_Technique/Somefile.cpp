#include "Somefile.h"

Some &Some::getSome() {
	static Some s("hello, world");
	return s;
}
