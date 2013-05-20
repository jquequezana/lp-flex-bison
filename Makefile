all: calcp
	./calcp

calcp: calc.lex.o calc.y.o
	gcc -g -o calcp calc.lex.o calc.y.o -lfl -lm

calc.lex.o: lex.yy.c
	gcc -g -c lex.yy.c  -o calc.lex.o

lex.yy.c: calc.tab.h
	flex calc.lex

calc.tab.h:
	bison -d calc.y

calc.y.o: calc.tab.h
	gcc -g -c calc.tab.c -o calc.y.o

clean:
	rm -f *.o *.c *.h calcp
