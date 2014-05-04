/*
 * A program to show how to avoid conversion warnings with C++ static_cast.
 *
 * Compile: g++ -Wconversion no-warnings.cpp
 *
 * (Above instructions valid for Unix/Linux only.)
 *
 * Note: This program is not really meant to be executed, it is just to
 * demonstrate how conversion warnings may be avoided.
*/

int foo(int x, long y) {

	short a = static_cast<short>(y);

	int b = static_cast<int>(3.14);

	float f = static_cast<float>(y);
	y = static_cast<long>(f);	
	
	double d = static_cast<double>(y);
	y = static_cast<long>(d);

}

int main() {
	/* Only C will warn about the missing return value */
}
