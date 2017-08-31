LDFLAGS += -shared -lcrypt
CFLAGS += -fPIC

ifndef LUA
LUA = lua5.1
endif
ifdef LUA_INCDIR
INC += -I${LUA_INCDIR}
else
INC += -I/usr/include/${LUA}
endif

all: gnucrypt.so

gnucrypt.so:
	${CC} ${CFLAGS} ${INC} ${LDFLAGS} -o gnucrypt.so src/gnucrypt.c

clean:
	rm -f gnucrypt.so
