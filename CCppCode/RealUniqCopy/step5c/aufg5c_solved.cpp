/*
 ==============================================================================
 Remove all duplicated strings from input - no matter where they appear
 ==============================================================================
*/

#include <set>

template<class Iterator>
struct GetElemType {
	typedef typename Iterator::value_type type;
};

template<class ElemType>
struct GetElemType<const ElemType*> {
	typedef ElemType type;
};

template<class InIt, class OutIt>
OutIt real_unique_copy(InIt beg, InIt end, OutIt dest) {
	typedef typename GetElemType<InIt>::type ElemType;
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

#include "IODrive.h"

int main(int argc, char* argv[]) {

    	return IODrive(std::cout)
    		//	.config_details_uncond(true)
    		//	.config_titles_only(true)
    		//	.config_summary_only(true)
    		//	.config_no_summary(true)
    		//	.config_failure_stop(true)
    		//	.config_interactive_mode(true)
    		//	.config_page_output(true)
    		//	.config_line_length(100)
    			.config(argc, argv)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("empty stream")
		.expect("")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("one item")
		// -------------------------------------------------------------------
		.supply("one")
		.expect("one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("two items - no duplicates")
		// -------------------------------------------------------------------
		.supply("one two")
		.expect("one two ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("two items reversed - no duplicates")
		// -------------------------------------------------------------------
		.supply("two one")
		.expect("two one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("many items - some duplicates")
		// -------------------------------------------------------------------
		.supply("one two one two two three one")
		.expect("one two three ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("many items - all duplicates")
		// -------------------------------------------------------------------
		.supply("one one one one one one one")
		.expect("one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some integers")
		// -------------------------------------------------------------------
		.supply("1 2 01 02 002 1 3")
		.expect("1 2 3 ")
		// -------------------------------------------------------------------
		.run_to_return(aufg2_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some integers as strings")
		// -------------------------------------------------------------------
		.supply("1 2 01 02 002 1 3")
		.expect("1 2 01 02 002 3 ")
		// -------------------------------------------------------------------
		.run_to_return(aufg1_demo)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some integers from C-style array (hard-coded) to ostream")
		// -------------------------------------------------------------------
		.expect("5 6 3 7 4 ")
		.run_to_return(
			[](istream&, ostream& out) {
    			// ============================================
				const int data[] = {5, 6, 3, 5, 7, 3, 5, 4, 7};
				real_unique_copy(
					&data[0], &data[sizeof data/sizeof data[0]],
					ostream_iterator<int>(out, " ")
				);
				// ============================================
    		})

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some doubles reverse from STL vector (hard-coded) to ostream")
		// -------------------------------------------------------------------
		.expect("7 4 3.5 5.6 ")
		// -------------------------------------------------------------------
		.run_to_return(
			[](istream&, ostream& out) {
				// ============================================
				vector<double> data = {5.6, 3.5, 7, 3.5, 4, 7};
				real_unique_copy(
					data.rbegin(), data.rend(),
					ostream_iterator<double>(out, " ")
				);
				// ============================================
			})

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some doubles from STL list to deque front (hard-coded)")
		// -------------------------------------------------------------------
		.run_to_return<bool>(true,
			[](istream&, ostream&) {
				// ============================================
				list<double> data({5.6, 3.5, 7, 3.5, 4, 7});
				deque<double> result;
				real_unique_copy(
					data.begin(), data.end(),
					front_inserter(result)
				);
				// -------------------------
				return (result.size() == 4)
					&& (result.at(3) = 5.6)
					&& (result.at(2) = 3.5)
					&& (result.at(1) = 7.0)
					&& (result.at(0) = 4.0);
				// ============================================
			})

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some doubles from istream to C-style array (hard-coded)")
		// -------------------------------------------------------------------
		.run_to_return<bool>(true,
			[](istream&, ostream&) {
				// ============================================
				istringstream in("5.6 3.5 7 3.5 4 7");
				double result[100]; // !! MUST BE LARGE ENOUGH
				const double *const end_data =
					real_unique_copy(
						istream_iterator<double>(in),
						istream_iterator<double>(),
						result  // same as: &result[0]
					);
				// ----------------------------
				return (end_data == &result[4])
					&& (result[0] = 5.6)
					&& (result[1] = 3.5)
					&& (result[2] = 7.0)
					&& (result[3] = 4.0);
				// ============================================
			})

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    	.summarize()
    	;

}
