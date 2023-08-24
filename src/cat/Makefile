CC=gcc
FLAGS=-Wall -Wextra -Werror
all: Mycat style clean

cleanAll: 
	rm -rf *.o
	rm -rf Mycat

clean:
	rm -rf *.o

style:
	clang-format -i -style=Google *.c

Mycat: Mycat_lib.o Mycat.o 
	$(CC) $(FLAGS) Mycat_lib.o Mycat.o -o Mycat

Mycat.o: Mycat.c
	$(CC) $(FLAGS) -c Mycat.c

Mycat_lib.o: Mycat_lib.c
	$(CC) $(FLAGS) -c Mycat_lib.c -o Mycat_lib.o

test: all 
	sh test_func_cat.sh