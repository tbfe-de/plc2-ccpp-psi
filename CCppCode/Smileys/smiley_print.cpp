/*
 * Print an ASCI-art picture from initialised data.
 *
 * Compile: g++ smiley_print.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <iostream>

bool pic_data[14][25] = {
       { false, false, false, false, false, false, false, false, false, true , 
         true , true , true , true , true , true , false, false, false, false, 
         false, false, false, false, false, },
       { false, false, false, false, false, false, true , true , false, false, 
         false, false, false, false, false, false, false, true , true , false, 
         false, false, false, false, false, },
       { false, false, false, false, true , false, false, false, false, false, 
         false, false, false, false, false, false, false, false, false, false, 
         true , false, false, false, false, },
       { false, false, true , false, false, false, false, true , true , false, 
         false, false, false, false, false, false, true , true , false, false, 
         false, false, true , false, false, },
       { false, true , false, false, false, false, false, true , true , false, 
         false, false, true , false, false, false, true , true , false, false, 
         false, false, false, true , false, },
       { true , false, false, false, false, false, false, false, false, false, 
         false, false, true , false, false, false, false, false, false, false, 
         false, false, false, false, true , },
       { true , false, false, false, false, false, false, false, false, false, 
         false, false, true , false, false, false, false, false, false, false, 
         false, false, false, false, true , },
       { true , false, false, false, false, false, false, false, false, false, 
         false, false, true , false, false, false, false, false, false, false, 
         false, false, false, false, true , },
       { true , false, false, false, false, false, true , false, false, false, 
         false, false, false, false, false, false, false, false, true , false, 
         false, false, false, false, true , },
       { false, true , false, false, false, false, false, true , true , false, 
         false, false, false, false, false, false, true , true , false, false, 
         false, false, false, true , false, },
       { false, false, true , false, false, false, false, false, false, true , 
         true , true , true , true , true , true , false, false, false, false, 
         false, false, true , false, false, },
       { false, false, false, false, true , false, false, false, false, false, 
         false, false, false, false, false, false, false, false, false, false, 
         true , false, false, false, false, },
       { false, false, false, false, false, false, true , true , false, false, 
         false, false, false, false, false, false, false, true , true , false, 
         false, false, false, false, false, },
       { false, false, false, false, false, false, false, false, false, true , 
         true , true , true , true , true , true , false, false, false, false, 
         false, false, false, false, false, },
};

int main() {
	for (const auto &line : pic_data) {
		for (const bool prtmark : line) {
			std::cout.put(prtmark ? '*' : ' ');
		}
		std::cout.put('\n');
	}
}
