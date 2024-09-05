CC=gcc
CFLAGS=-Wall

run.x: main.o
	${CC} ${CFLAGS} $^ -o run.x






