#include <unistd.h>

void say_hello() {
	(void) write(1, "hi!\n", 4);
}

int main() {
	say_hello();
}
