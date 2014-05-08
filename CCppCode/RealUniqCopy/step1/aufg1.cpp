/*
 ==============================================================================
 Remove all duplicated strings from input - no matter where they appear
 ==============================================================================
*/
#include <iterator>
#include <set>
#include <string>

void real_unique_copy(
	std::istream_iterator<std::string> beg,	// read string-s from stream
	std::istream_iterator<std::string> end,	// ... until 'end-of-file'
	std::ostream_iterator<std::string> dest	// write result to stream
) {
	// ..........
	// TO-BE-DONE
	// ..........
}

#include <iostream>

void aufg1_demo(std::istream& in, std::ostream& out) {
	real_unique_copy(
		std::istream_iterator<std::string>(in),
		std::istream_iterator<std::string>(),
		std::ostream_iterator<std::string>(out, " ")
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
    	.test_cincout("type words to remove duplicates", aufg1_demo)
    	.summarize()
    	;

}

