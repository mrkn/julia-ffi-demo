uname_s = $(shell uname -s)
ifeq ($(uname_s),Linux)
  DLEXT := so
endif
ifeq ($(uname_s),Darwin)
  DLEXT := dylib
endif

TARGET = libhello.$(DLEXT)

all: $(TARGET)

clean:
	rm -f $(TARGET) *.o

libhello.dylib: hello.o
	$(CC) -shared -install_name @rpath/$@ -o $@ $<

libhello.so: hello.o
	$(CC) -shared -o $@ $<

.c.o:
	$(CC) $(CFLAGS) -fPIC -c $<
