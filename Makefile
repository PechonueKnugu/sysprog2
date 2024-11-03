Hello_Project: main.o libfunction.a
	g++ main.o -L. -lfunction -o Hello_Project

libfunction.a: function.o
	ar rcs libfunction.a function.o
	
main.o : main.cpp
	g++ -c main.cpp -o main.o

function.o : function.cpp
	g++ -c function.cpp -o function.o
	
.PHONY : clean
clean:
	rm -f main.o function.o Hello_Project