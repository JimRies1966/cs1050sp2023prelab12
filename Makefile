##########################
# Makefile for PreLab 12 #
##########################

# Setup default compiler, compile options, and link options
CC=gcc
COPTS = -c -std=c11 -Wall -Werror -pedantic-errors
LOPTS = -L/group/cs1050/lib -lm -L.

# Default target
a.out : prelab12.o
	$(CC) prelab12.o $(LOPTS)

prelab12.o : prelab12.c
	$(CC) $(COPTS) prelab12.c

# Debugging target
debug: COPTS += -DDEBUG=1 -g
debug: clean a.out

# Clean build target
clean :
	@rm -f *.o
	@rm -f a.out
