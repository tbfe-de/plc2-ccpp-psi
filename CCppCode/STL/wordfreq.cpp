/*
 * This is a classical example: its C version in the
 * book "The C Programming Language" takes about 100
 * lines. Now look below - less only a dozen lines!
 *
 * What will change if you replace the map with an
 * unordered_map?
*/

#include <iostream>
#include <string>
#include <map>
using namespace std;

int main() {
	map<string, int> data;
	string word;
	while (cin >> word)
		++data[word];
	for (auto const &e : data)
		cout << e.first << ": " << e.second << endl;
}

// OTHER VERSIONS TO BE DONE

