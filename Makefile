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

rpm: $(EXECUTABLE)
    # Create necessary directories for RPM build
    mkdir -p rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
    
    # Create a tarball of the source code
    tar czf rpmbuild/SOURCES/$(EXECUTABLE)-$(VERSION).tar.gz $(SOURCES) $(EXECUTABLE).spec
    
    # Build RPM package using rpmbuild
    rpmbuild -ba $(EXECUTABLE).spec

.PHONY: all clean
