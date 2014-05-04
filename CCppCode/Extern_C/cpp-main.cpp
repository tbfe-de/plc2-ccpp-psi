void bar(int, int);
char bar(double);

extern "C" int foo(long, const char *);

int main() {
	bar(12, foo(-1uL, nullptr));
	bar(3.14152);
}
