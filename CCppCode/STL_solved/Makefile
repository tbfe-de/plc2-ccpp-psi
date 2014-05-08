SOURCES=\
	reverse.cpp\
	sortuniq.cpp\
	wordfreq.cpp\
	wordlist.cpp\
	permutate.cpp\
	countif.cpp

all: $(SOURCES:.cpp=)
	@echo "all targets up-to-date"
.cpp:
	g++ -std=c++0x $< -o $@
clean:
	rm -f a.out core *.o $(SOURCES:.cpp=)

