SOURCES=\
	fp_factorial.cpp\
	real_uniq_copy1.cpp\
	real_uniq_copy2.cpp\
	real_uniq_copy3.cpp\
	real_uniq_copy4.cpp\
	real_uniq_copy5.cpp\
	real_uniq_copy6.cpp

all:	$(SOURCES:.cpp=)
	@echo "all targets up-to-date"

clean:
	rm -f a.out core *.o $(SOURCES:.cpp=)

.cpp:
	g++ -std=c++0x $< -o $@



