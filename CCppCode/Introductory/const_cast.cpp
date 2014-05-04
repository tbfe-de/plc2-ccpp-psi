/*
 * Demonstrate the sometimes strange effects of const_cast.
 *
 * Compile: g++ const_cast.cpp
 * Execute: a.out
 *
 * You may also try to move the local variable to a global ...
 * 
 * (Above instructions valid for Unix/Linux only.)
*/

#include <iostream>
using namespace std;

void foo(const int answer) { cout << "foo says: " << answer << endl; }
void bar(const int &answer) { cout << "bar says: " << answer << endl; }

int main() {
	const int answer_to_the_ultimate_question_of_life = 42;

	cout << "--------- prior const_cast\n";
	foo(answer_to_the_ultimate_question_of_life);
	bar(answer_to_the_ultimate_question_of_life);

        const_cast<int &>(answer_to_the_ultimate_question_of_life) = 43;
	cout << "--------- after const_cast\n";
	foo(answer_to_the_ultimate_question_of_life);
	bar(answer_to_the_ultimate_question_of_life);

#if 0 // MORE_STRANGE_EFFECTS
	cout << answer_to_the_ultimate_question_of_life << endl;
	int v;
	cout << (v = answer_to_the_ultimate_question_of_life) << endl;

	cout << *(&answer_to_the_ultimate_question_of_life) << endl;
	const int *p;
	cout << *(p = &answer_to_the_ultimate_question_of_life) << endl;
#endif
}
