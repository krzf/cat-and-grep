CC=gcc
FLAGS=-Wall -Wextra -Werror
all: Mygrep style clean

rebuild: cleanAll Mygrep style clean



cleanAll: 
	rm -rf *.o
	rm -rf Mygrep

clean:
	rm -rf *.o

style:
	clang-format -i -style=Google *.c

Mygrep: Mygrep_lib.o Mygrep.o 
	$(CC) $(FLAGS) Mygrep_lib.o Mygrep.o -o Mygrep
	rm -rf *.o


Mygrep.o: Mygrep.c
	$(CC) $(FLAGS) -c Mygrep.c

Mygrep_lib.o: Mygrep_lib.c
	$(CC) $(FLAGS) -c Mygrep_lib.c -o Mygrep_lib.o

test: all
	sh test.sh
