#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

vector<int> data({1, 6, 4, 4, 234, 4243, 2, 43, 2, 2, 24, });

#if 0
int main() {
	
	int limit;
	cin >> limit;
	const auto n = count_if(data.begin(), data.end(),
				   [limit](int x) { return x < limit; }
                               );
	cout << n << endl;
}
#else
class CheckLimit {
	const int lim;
public:
	CheckLimit(int li) : lim(li) {}
	bool operator()(int x) {
		return x < lim;
	}
};

int main() {
	
	int limit;
	cin >> limit;
	const auto n = count_if(data.begin(), data.end(),
				   CheckLimit(limit)
                               );
	cout << n << endl;
}
#endif
