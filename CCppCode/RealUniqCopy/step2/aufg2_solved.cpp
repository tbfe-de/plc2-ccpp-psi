/*
 ==============================================================================
 Remove all duplicated strings from input - no matter where they appear
 ==============================================================================
*/
#include <iterator>
#include <set>
#include <string>

template <class ElemType>
void real_unique_copy(
	std::istream_iterator<ElemType> beg,
	std::istream_iterator<ElemType> end,
	std::ostream_iterator<ElemType> dest
) {
	std::set<ElemType> known;
	while (beg != end) {
		const ElemType elem = *beg++;	// fulfill "contract" for input iterator
		if (known.insert(elem).second) {
			*dest++ = elem;		// fulfill "contract" for output iterator
		}
	}
}

template<typename T>
void aufg_demo(std::istream& in, std::ostream& out) {
	real_unique_copy(
		std::istream_iterator<T>(in),
		std::istream_iterator<T>(),
		std::ostream_iterator<T>(out, " ")
	);
}

/*
void aufg2_demo(std::istream& in, std::ostream& out) {
	real_unique_copy(
		std::istream_iterator<int>(in),
		std::istream_iterator<int>(),
		std::ostream_iterator<int>(out, " ")
	);
}
*/

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
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("one item")
		// -------------------------------------------------------------------
		.supply("one")
		.expect("one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("two items - no duplicates")
		// -------------------------------------------------------------------
		.supply("one two")
		.expect("one two ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("two items reversed - no duplicates")
		// -------------------------------------------------------------------
		.supply("two one")
		.expect("two one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("many items - some duplicates")
		// -------------------------------------------------------------------
		.supply("one two one two two three one")
		.expect("one two three ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("many items - all duplicates")
		// -------------------------------------------------------------------
		.supply("one one one one one one one")
		.expect("one ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some integers")
		// -------------------------------------------------------------------
		.supply("1 2 01 02 002 1 3")
		.expect("1 2 3 ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<int>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
		.test("some integers as strings")
		// -------------------------------------------------------------------
		.supply("1 2 01 02 002 1 3")
		.expect("1 2 01 02 002 3 ")
		// -------------------------------------------------------------------
		.run_to_return(aufg_demo<std::string>)

		// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    	.test_cincout("type words to remove duplicates", aufg_demo<std::string>)
    	.summarize()
    	;

}
