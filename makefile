#THUOOP
#C++ Course
all: test
test: helloworld.o func.o func.h
	g++ helloworld.o func.o -o test
helloworld.o:helloworld.cpp func.h
	g++ helloworld.cpp -c -o helloworld.o
func.o:func.cpp func.h
	g++ func.cpp -c -o func.o
clean:
	del *.o *.exe
