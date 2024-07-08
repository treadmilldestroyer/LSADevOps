# Sample Makefile

# Variables
SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:.c=.o)
EXECUTABLE := myprogram

# Default target
all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
    gcc -o $@ $^

%.o: %.c
    gcc -c -o $@ $<

clean:
    rm -f $(EXECUTABLE) $(OBJECTS)

.PHONY: all clean
