EXE = dice_rand dice_random

all: $(EXE)

dice_rand: dice_rand.c
	gcc -O2 dice_rand.c -o $@
dice_random: dice_random.cpp
	g++ -std=c++0x -O2 dice_random.cpp -o $@
clean:
	@rm -f a.out core *.o *.s $(EXE)
