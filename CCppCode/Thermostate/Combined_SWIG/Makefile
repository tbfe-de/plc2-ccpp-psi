# Give help on targets

help:
	@echo "Usage: make <target>"
	@echo "  -or- make <target>.run"
	@echo "  were <target> is one of:"
	@echo "       thermostate-main  -- a bare-bones C-only driver for interactive use"
	@echo "       thermostate-test  -- a TDD inspired main program, displaying just"
	@echo "                            ** TESTS PASSED ** (or which test has failed)"
	@echo "       thermostate.tcl   -- a small GUI based driver written in Tcl/Tk"
	@echo "  adding '.run' will not only update the target but also execute it"
	

all:\
	thermostate.tcl\
	thermostate-main\
	thermostate-test
	@echo "all targets available and up-to-date"

thermostate.tcl:\
	thermostate.so

thermostate-main:\
	thermostate.o\
	thermostate-main.o
	gcc thermostate.o thermostate-main.o -o $@

thermostate-test:\
	thermostate.o\
	thermostate-test.o
	gcc thermostate.o thermostate-test.o -o $@

thermostate.so:\
	thermostate.o\
	thermostate_wrap.o
	gcc -shared thermostate.o thermostate_wrap.o -o$@

thermostate_wrap.o:\
	thermostate_wrap.c
	gcc -c -fPIC -I/usr/include/tcl8.5 thermostate_wrap.c

thermostate_wrap.c:\
	thermostate.i\
	thermostate.h
	swig -tcl thermostate.i

thermostate.o:\
	thermostate.h\
	thermostate.c
	gcc -c -fPIC thermostate.c

thermostate-main.o:\
	thermostate.h\
	thermostate-main.c
	gcc -c thermostate-main.c

thermostate-test.o:\
	thermostate.h\
	thermostate-test.c
	gcc -c thermostate-test.c

thermostate.tcl.run:\
	thermostate.tcl
	@echo "please control Tcl/Tk application via its GUI ..." 
	@wish thermostate.tcl

%.run : %
	@echo "starting executable program ${@:.run=} now ..."
	@./${@:.run=} || echo "execution returned failure"

clean:
	@rm -f a.out core *.o *_wrap.c thermostate.so thermostate-test thermostate-main
