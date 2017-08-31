LDFLAGS += -shared -lcrypt
CFLAGS += -fPIC
INC = -I/usr/include/lua5.1

all: gnucrypt.so

gnucrypt.so:
	${CC} ${CFLAGS} ${INC} ${LDFLAGS} -o gnucrypt.so src/gnucrypt.c

clean:
	rm -f gnucrypt.so
