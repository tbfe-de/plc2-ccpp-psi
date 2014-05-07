demo.run: demo.so
	./demo.tcl

demo_wrap.cpp: demo.i
	swig -tcl8 -c++ -o $@ demo.i

OBJS=demo.o demo_wrap.o sensor_read.o reset_all.o

$(OBJS): demo.h

demo.so: $(OBJS)
	g++ -shared $(OBJS) -o $@ -ltcl

.cpp.o:
	gcc -c -O2 -fpic -I/usr/include/tcl $<
clean:
	rm -f $(OBJS) demo_wrap.cpp demo.so
