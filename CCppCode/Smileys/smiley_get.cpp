/*
 * Preprare an ASCI-art picture as initialised data structure.
 *
 * Compile: gcc smiley_get.cpp
 * Execute: a.out
 *
 * (Above instructions valid for Unix/Linux only.)
*/

#include <fstream>
#include <iostream>
#include <vector>
using namespace std;

vector<char> picture;

int main(int argc, char *argv[]) {
	if (argc != 2) {
		cerr << "Usage: " << argv[0] << " <picture-file>" << endl;
		return 1;
	}
	ifstream picin(argv[1]);
	if (!picin.good()) {
		cerr << "cannot open picture-file: " << argv[1] << endl;
		return 2;
	}
	int height = 0;		// height of picture read
	int width = 0;		// width of picture read
	int tw = 0;		// temporary for width
	char c;			// temporary for input
	while (picin.get(c)) {
		picture.push_back(c);
		if (c != '\n')
			++tw;
		else {
			if (tw > width)
				width = tw;
			tw = 0;
			++height;
		}
	}
	picin.close();
	tw = 0;
	cout << "bool pic_data[" << height << "][" << width << "] = {";
	for (auto c : picture) {
		if ((tw % 10) == 0) {
			cout << "\n       ";
			if (tw == 0)
				cout << "{ ";
			else
				cout << "  ";
		}
		if (c == '*') {
			cout << "true , ";
			++tw;
		}
		else if (c != '\n') {
			cout << "false, ";
			++tw;
		}
		else {
			while (tw < width) {
				cout << "false, ";
				if ((++tw % 10) == 0)
					cout << "\n         ";
			}
			tw = 0;
			cout << "},";
		}
	}
	cout << "\n};" << endl;
}
