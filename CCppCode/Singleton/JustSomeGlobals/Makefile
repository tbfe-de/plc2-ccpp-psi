all: app-ok app-fail

app-ok:
	g++ Somefile.cpp Otherfile.cpp main.cpp -o $@
app-fail:
	g++ Otherfile.cpp Somefile.cpp main.cpp -o $@
clean:
	@rm -f a.out core *.o app-ok app-fail
