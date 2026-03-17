TARGET=jbfinspect

prefix ?= /usr/local
bindir ?= $(prefix)/bin

CFLAGS := -O3 -std=c99 -Wall -pedantic -D_GNU_SOURCE $(CFLAGS)

.PHONY: all install uninstall clean

all: $(TARGET)

clean:
	$(RM) $(TARGET)

install:
	install $(TARGET) $(bindir)/$(TARGET)

uninstall:
	$(RM) $(prefix)/$(TARGET)
