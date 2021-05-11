CC ?= gcc
INCLDIR += ./include
LIBDIR += ./lib

CFLAGS += -m32 -Wall -g -I$(INCLDIR)
LDFLAGS += -m32 -L$(LIBDIR) -lpq

all : test
test : test.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS) 
clean :
	-rm test
