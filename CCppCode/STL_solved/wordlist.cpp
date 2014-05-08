/*
 * This is a little variant of the classical example
 * with frequencies: it prints a list where each word
 * was found in the input.
 *
 * How would a program look like that does the reverse?
 * something you may want to start with is shown below
 * as a conditional compilation - but you will need to
 * complete it at the "TBD"-points.
*/

#define V 1
#if V == 1
#include <iostream>
#include <map>
#include <string>
#include <vector>
using namespace std;

int main() {
	map<string, vector<int>> data;
	string word;
	int pos = 0;
	while (cin >> word)
		data[word].push_back(++pos);
	for (auto const &e : data) {
		cout << e.first << ':';
		for (auto const &p : e.second)
			cout << ' ' << p;
		cout << endl;
	}
}

#elif V == 2
#include <iostream>
#include <map>
#include <sstream>
#include <string>
using namespace std;

int main() {
	map<int, string> data;
	while (getline(cin, line)) {
		istringstream iss line;
		string word;
		getline(iss, world, ':');
		int pos;
		while (iss >> pos)
			data[pos] = w;
	}
	for (const auto &e : data)
		e.second;
	cout << endl;
}

#endif

