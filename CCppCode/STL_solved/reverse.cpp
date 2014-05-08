/*
 * Write a program that reads a number of strings from cin
 * and after reaching end-of-file prints all of them out
 * in reverse order.
 *
 * If your time allows, use different techniques like:
 * - filling a vector at its back-end, run over it with 
 *   iterators moving to the front-end
 * - filling a deque from its front, run through it with
 *   ordinary iterators or a range-based for loop
 * - applying the "reverse" adapter to a deque
 * - ...
*/

#define V 3
#if V == 1

#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main() {
	vector<string> data;
	string word;
	while (cin >> word)
		data.push_back(word);
	for (auto it = data.crbegin(); it != data.crend(); ++it)
		cout << *it << endl;
}

#elif V == 2

#include <iostream>
#include <deque>
#include <string>
using namespace std;

int main() {
	list<string> data;
	string word;
	while (cin >> word)
		data.push_front(word);
	for (auto const &w : data)
		cout << w << endl;
}

#elif V == 3

#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main() {

	vector<string> data;
	string word;
	while (cin >> word)
		data.push_back(word);
	reverse(data.begin(), data.end());
	for (auto const &w : data)
		cout << w << endl;
}

#endif
