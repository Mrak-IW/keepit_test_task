.PHONY: all clean debug test

CC := g++
DEBUG_FLAGS := -ggdb
EXEC_NAME := words_count
CFLAGS := -std=c++11 

all: ${EXEC_NAME}

clean:
	rm -rf ${EXEC_NAME}

${EXEC_NAME}: ${EXEC_NAME}.cpp Makefile
	@echo ${CFLAGS}
	${CC} ${CFLAGS} ${EXEC_NAME}.cpp ${DEBUG_FLAGS} -o ${EXEC_NAME}

debug: CFLAGS+=-DDEBUG
debug: all

test:
	@echo "a horse and a dog" | ./${EXEC_NAME}
