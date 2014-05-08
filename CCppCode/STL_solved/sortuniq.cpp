/*
 * Write a program that reads a number of strings from cin
 * and prints them out in sorted order with duplicates
 * removed. One variant is shown below, that is reading
 * the words into a set and hust iterating over it.
 *
 * Again try other versions, like first reading in all
 * words into a vector, THEN sort it, THEN make it uniq
 * (remove adjacent duplicates). You probably want to
 * read the online manual for the algorithms "sort" and
 * "unique".
 *
 * And a little more advance: use the copy algorithm and
 * stream_iterators (may be you need some help from the 
 * instructor for the latter).
*/

#define V 4

#if V == 1

#include <iostream>
#include <string>
#include <set>
using namespace std;

int main() {
	set<string> data;
	string word;
	while (cin >> word)
		data.insert(word);
	for (auto const &w : data)
		cout << w << endl;
}

#elif V == 2

#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>
using namespace std;

int main() {
	vector<string> data;
	string word;
	// while (cin >> word)
	//	data.push_back(word);
	copy(istream_iterator<string>(cin), istream_iterator<string>(), back_inserter(data));
	sort(data.begin(), data.end());
	const auto end = unique(data.begin(), data.end());
	// for (auto const &w : data)
	//	cout << w << "\n";
	data.resize(end - data.begin());
	copy(data.begin(), data.end(), ostream_iterator<string>(cout, "\n"));
}

#elif V == 4

#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>
using namespace std;

int main() {
	vector<string> data;
	string word;
	// while (cin >> word)
	//	data.push_back(word);
	copy(istream_iterator<string>(cin), istream_iterator<string>(), back_inserter(data));
	sort(data.begin(), data.end());
	// for (auto const &w : data)
	//	cout << w << "\n";
	unique_copy(data.begin(), data.end(), ostream_iterator<string>(cout, "\n"));
}

#elif V == 4

#include <iostream>
#include <functional>
#include <string>
#include <set>
using namespace std;

int main() {
	set<string, greater<string>()> data;
	string word;
	while (cin >> word)
		data.insert(word);
	for (auto const &w : data)
		cout << w << endl;
}

#endif

