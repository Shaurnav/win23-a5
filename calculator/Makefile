#main.c needs _add + _multiply +_divide + _subtract
objects = addition.o multiplication.o subtraction.o division.o main.o

calculator: $(objects) main.o
	cc -o calculator $(objects)

$(objects): %.o:%.c operations.h
	cc -c $< -o $@

clean:
	rm -rf *.o calculator && make

.PHONY: clean
