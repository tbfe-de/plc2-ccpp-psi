#include <unistd.h>

void say_hello() {
	write(1, "hi!\n", 4);
}

int main() {
	say_hello;
}
