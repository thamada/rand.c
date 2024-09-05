#Time-stamp: <2024-09-05 19:39:53 hamada>

CC=gcc
CFLAGS=-Wall

# Get the hostname using the shell command
HOSTNAME := $(shell hostname)

# Get the current date and time using the shell command
DATE := $(shell date +"%Y%m%d-%H%M%S")

run.x: main.o
	${CC} ${CFLAGS} $^ -o run.x



LOGNAME = logs/log.${HOSTNAME}.${DATE}.txt

log:
	./run.x | tee ${LOGNAME}
	cat /etc/os-release | tee -a ${LOGNAME}


clean:
	rm -f *~ .*~ *.o run.x


c: clean


