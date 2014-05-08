/*
 * The following program prints all permutations of the
 * values 1..4 from a statically initialized array of
 * integers. That way it also shows how pointers can be
 * used as iterators.
 *
 * Apply the following changes (step by step, not at once)
 * - Turn the initialized array into an initialized vector
 * - Change from integers to strings and initialize with
 *   words: vector<string> data = ({"my", "little", "dog"});
 * - Fill the vector from input supplied by the user.
*/

#include <algorithm>
#include <iostream>
#include <iomanip>
#include <iterator>
using namespace std;

int main() {
	int data[] = { 1, 2, 3, 4 };
	const int N = sizeof data / sizeof data[0];
	int line = 0;
	do {
		cout << setw(3) << ++line << ": ";
		copy(&data[0], &data[N], ostream_iterator<int>(cout, " "));
		cout << endl;
	} while (next_permutation(&data[0], &data[N]));
}

