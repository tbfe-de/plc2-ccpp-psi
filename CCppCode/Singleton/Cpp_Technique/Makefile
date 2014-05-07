all: app-ok1 app-ok2

app-ok1:
	g++ Somefile.cpp Otherfile.cpp main.cpp -o $@
app-ok2:
	g++ Otherfile.cpp Somefile.cpp main.cpp -o $@
clean:
	@rm -f a.out core *.o app-ok1 app-ok2
