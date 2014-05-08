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

// OTHER VERSIONS TO BE DONE

