all: simple-demo elevator
	@echo "all targets up to date"

elevator: elevator.o LimitDetector_sr.o
	g++ elevator.o LimitDetector_sr.o -o $@

simple-demo: simple-demo.o LimitDetector.o
	g++ simple-demo.o LimitDetector.o -o $@

elevator.o: elevator.cpp LimitDetector.h
	g++ -c -DSELF_REGISTERING elevator.cpp

simple-demo.o: simple-demo.cpp LimitDetector.h
	g++ -c -std=c++0x simple-demo.cpp

LimitDetector.o: LimitDetector.cpp LimitDetector.h
	g++ -c LimitDetector.cpp
LimitDetector_sr.o: LimitDetector.cpp LimitDetector.h
	g++ -DSELF_REGISTERING -c LimitDetector.cpp -o $@
