/*
 ==============================================================================
 Remove all duplicated strings from input - no matter where they appear
 ==============================================================================
*/

#include <set>

template<class InIt, class OutIt>
OutIt real_unique_copy(InIt beg, InIt end, OutIt dest) {
	typedef typename InIt::value_type ElemType;
	std::set<ElemType> known;
	while (beg != end) {
		const ElemType elem = *beg++;	// fulfill "contract" for input iterator
		if (known.insert(elem).second) {
			*dest++ = elem;		// fulfill "contract" for output iterator
		}
	}
	return dest;
}

#include <deque>
#include <iterator>
#include <string>
#include <list>
#include <vector>
using namespace std;

void aufg1_demo(std::istream& in, std::ostream& out) {
	real_unique_copy(
		istream_iterator<string>(in),
		istream_iterator<string>(),
		ostream_iterator<string>(out, " ")
	);
}

void aufg2_demo(std::istream& in, std::ostream& out) {
	real_unique_copy(
		istream_iterator<int>(in),
		istream_iterator<int>(),
		ostream_iterator<int>(out, " ")
	);
}

#define TDD
#ifndef TDD

int main() {
	aufg1_demo(std::cin, std::cout);
}

#else

#include <cassert>
#include <iostream>
#include <sstream>
using namespace std;

void test_empty_stream() {
	istringstream prepared_input("");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "");
}

void test_one_item() {
	istringstream prepared_input("one");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "one ");
}

void test_two_items_no_duplicates() {
	istringstream prepared_input("one two");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "one two ");
}

void test_two_items_reversed_no_duplicates() {
	istringstream prepared_input("two one");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "two one ");
}

void test_many_items_some_duplicates() {
	istringstream prepared_input("one two one two two three one");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "one two three ");
}

void test_many_items_all_duplicates() {
	istringstream prepared_input("one one one one one one one");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "one ");
}

void test_some_integers() {
	istringstream prepared_input("1 2 01 02 002 1 3");
	ostringstream expected_output;
	aufg2_demo(prepared_input, expected_output);
	assert(expected_output.str() == "1 2 3 ");
}

void test_some_integers_as_strings() {
	istringstream prepared_input("1 2 01 02 002 1 3");
	ostringstream expected_output;
	aufg1_demo(prepared_input, expected_output);
	assert(expected_output.str() == "1 2 01 02 002 3 ");
}

#if 0
/*
 * This test must temporarily be disabled as pointers have no nested
 * typedef for their 'value_type' and therefore real_unnique_copy will
 * get a compile error. (This is fixed in the next step).
*/
void test_some_integers_from_C_style_array_to_ostream() {
	ostringstream expected_output;
	const int data[] = {5, 6, 3, 5, 7, 3, 5, 4, 7};
	real_unique_copy(
		&data[0], &data[sizeof data/sizeof data[0]],
		ostream_iterator<int>(expected_output, " ")
	);
	assert(expected_output.str() == "5 6 3 7 4 ");
}
#endif

void test_some_doubles_reverse_from_STL_vector_to_ostream() {
#if 1
	vector<double> data;
	data.push_back(5.6);
	data.push_back(3.5);
	data.push_back(7);
	data.push_back(3.5);
	data.push_back(4);
	data.push_back(7);
#else
	const vector<double> data = {5.5, 3.5, 7, 3.5, 4, 7};
#endif
	ostringstream expected_output;
	real_unique_copy(
		data.rbegin(), data.rend(),
		ostream_iterator<double>(expected_output, " ")
	);
	assert(expected_output.str() == "7 4 3.5 5.6 ");
}

void test_some_doubles_from_STL_list_to_deque_front() {
#if 1
	list<double> data;
	data.push_back(5.6);
	data.push_back(3.5);
	data.push_back(7);
	data.push_back(3.5);
	data.push_back(4);
	data.push_back(7);
#else
	const list<double> data = {5.6, 3.5, 7, 3.5, 4, 7};
#endif
    	deque<double> result;
	real_unique_copy(
		data.begin(), data.end(),
		front_inserter(result)
	);
	assert(result.size() == 4);
	assert(result.at(3) == 5.6);
	assert(result.at(2) == 3.5);
	assert(result.at(1) == 7.0);
	assert(result.at(0) == 4.0);
}

void test_some_doubles_from_istream_to_C_style_array() {
	istringstream in("5.6 3.5 7 3.5 4 7");
	double result[100]; // !! MUST BE LARGE ENOUGH
	const double *const end_data =
		real_unique_copy(
			istream_iterator<double>(in),
			istream_iterator<double>(),
			result  // same as: &result[0]
		);
	assert(end_data == &result[4]);
	assert(result[0] = 5.6);
	assert(result[1] = 3.5);
	assert(result[2] = 7.0);
	assert(result[3] = 4.0);
}

int main() {
	test_empty_stream();
	test_one_item();
	test_two_items_no_duplicates();
	test_two_items_reversed_no_duplicates();
	test_many_items_some_duplicates();
	test_many_items_all_duplicates();
	test_some_integers();
	test_some_integers_as_strings();
#if 0
	// temporarily disabled - see notes above
	test_some_integers_from_C_style_array_to_ostream();
#endif
	test_some_doubles_reverse_from_STL_vector_to_ostream();
	test_some_doubles_from_STL_list_to_deque_front();
	test_some_doubles_from_istream_to_C_style_array();

	std::cout << "** ALL TESTS PASSED **" << std::endl;
}

#endif

