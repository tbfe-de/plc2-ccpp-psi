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
#include <sstream>
#include <string>
#include <vector>
using namespace std;

#define V 5

#if V == 1
int main() {
	int data[] = { 1, 2, 3, 4 };
	const int N = sizeof data / sizeof data[0];
	int line = 0;
	do {
		cout << setw(3) << ++line << ": ";
		// for (auto i : data) cout << i << " ";
		copy(&data[0], &data[N], ostream_iterator<int>(cout, " "));
		cout << endl;
	} while (next_permutation(&data[0], &data[N]));
}
#elif V == 2
int main() {
	vector<int> data({ 1, 2, 3, 4 });
	int line = 0;
	do {
		cout << setw(3) << ++line << ": ";
		copy(data.begin(), data.end(), ostream_iterator<int>(cout, " "));
		cout << endl;
	} while (next_permutation(data.begin(), data.end()));
}
#elif V == 3
int main() {
	vector<string> data({ "my", "little", "dog" });
	sort(data.begin(), data.end());
	int line = 0;
	do {
		cout << setw(3) << ++line << ": ";
		copy(data.begin(), data.end(), ostream_iterator<string>(cout, " "));
		cout << endl;
	} while (next_permutation(data.begin(), data.end()));
}
#elif V == 4
int main() {
	vector<string> data;
	copy(istream_iterator<string>(cin),
	     istream_iterator<string>(),
	     back_inserter(data));
	const auto start = data;
	int line = 0;
	do {
		cout << setw(3) << ++line << ": ";
		copy(data.begin(), data.end(), ostream_iterator<string>(cout, " "));
		cout << endl;
	} while (data != start);
}
#elif V == 5
int main() {
	string line;
	while (getline(cin, line) && !line.empty()) {
		istringstream iss(line);
		vector<string> data;
		copy(istream_iterator<string>(iss),
		     istream_iterator<string>(),
		     back_inserter(data));
		const auto start = data;
		int line = 0;
		do {
			cout << setw(3) << ++line << ": ";
			copy(data.begin(), data.end(), ostream_iterator<string>(cout, " "));
			cout << endl;
		} while (data != start);
	}
}
#endif

