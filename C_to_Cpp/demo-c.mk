demo.run: demo.so
	./demo.tcl

demo_wrap.c: demo.i
	swig -tcl8 demo.i

OBJS=demo.o demo_wrap.o sensor_read.o reset_all.o

$(OBJS): demo.h

demo.so: $(OBJS)
	gcc -shared $(OBJS) -o $@ -ltcl
.c.o:
	gcc -c -O2 -fpic -I/usr/include/tcl $<
clean:
	rm -f $(OBJS) demo_wrap.c demo.so
