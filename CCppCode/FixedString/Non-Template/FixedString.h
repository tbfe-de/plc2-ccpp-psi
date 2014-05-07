#ifndef FixedString_H
#define FixedString_H

#include <cstring>
#include <iostream>
#include <iomanip>

// Goal: provide a class that wraps a classical character
// array representing a string in C, making it easier
// to use (and more robust in some cases), while adding
// NO OVERHEAD of heap management. (So, except for the
// output facility using C++ iostreams, the class would
// be well suited for a bare metal embbeded application.)

class FixedString {
	enum { N = 28 };
	// accessible only for member functions or
	// friends of this class
	char data[N+1];

	// this is a helper function useful for the
	// copy constructor and the assignment operator
	void copy(const char *s) {
		strncpy(data, s, N)[N] = '\0';
	}
public:
	// the default constructor creates an empty
	// string (initializing the first character
	// to '\0')
	FixedString() {
		data[0] = '\0';
	}

	// this constructs a FixedString from a
	// classical C-String represented as address
	// of its first character; it also serves as
	// automatic type conversion for C strings
	FixedString(const char *init) {
		copy(init);
	}

	// this is an assignment operators that will
	// be used for assigning FixedString-s of a
	// different length
	FixedString &operator=(const FixedString &rhs) {
		copy(rhs.data);
		return *this;
	}

	// the next two operators allow to access
	// single characters, one is for use with
	// non-modifiable FixedString objects, the
	// other for modifiable ones
	const char &operator[](std::size_t idx) const {
		return data[idx];
	}
	char &operator[](std::size_t idx) {
		return data[idx];
	}

	// some convenient function making FixedString-s more
	// similar std::string-s
	bool empty() const {
		return data[0] == '\0';
	}
	std::size_t length() const {
		return std::strlen(data);
	}
	void clear() {
		data[0] = '\0';
	}
	const char *c_str() const {
		return data;
	}

	void append(char c) {
		const std::size_t len = length();
		if (len < N) {
			data[len] = c;
			data[len+1] = '\0';
		}
	}
	void append(const char* s) {
		const std::size_t len = length();
		if (N > len)
			std::strncat(data, s, N - len);
	}
	FixedString &operator+=(const FixedString &s) {
			append(s.data);
			return *this;
	}
	FixedString &operator+=(const char *s) {
			append(s);
			return *this;
	}

	// helper for input and output, otherwise operator>> 
	// and operator<< would have to be friends of this
	// class
	void from_stream(std::istream &is) {
		is >> std::setw(N+1) >> data;
	}
	void to_stream(std::ostream &os) const {
		os << data;
	}

	// helper for comparing FixedString-s
	static int compare(const FixedString &s1, const FixedString &s2) {
		return std::strcmp(s1.data, s2.data);
	}
};

// frequently output operators are used in chains, so
// a sub-expression is expected to return the stream
// it had as its left operand as result
std::ostream& operator<<(std::ostream &lhs,
                         const FixedString &rhs) {
	rhs.to_stream(lhs);
	return lhs;
}
std::istream& operator>>(std::istream &lhs,
			 FixedString &rhs) {
	rhs.from_stream(lhs);
	return lhs;
}

// all six comparisons
inline
bool operator<(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) < 0;
}
inline
bool operator<=(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) <= 0;
}
inline
bool operator>=(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) >= 0;
}
inline
bool operator>(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) > 0;
}
inline
bool operator!=(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) != 0;
}
inline
bool operator==(FixedString &lhs, FixedString &rhs) {
	return FixedString::compare(lhs, rhs) == 0;
}

#endif
