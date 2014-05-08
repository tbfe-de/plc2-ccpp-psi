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

// OTHER VERSIONS TO BE DONE

