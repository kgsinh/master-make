SRC = $(shell find -iname "*.c")
OBJ_FILES = $(SRC:%.c=%.o)
INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

all: main
	@

run: main
	@./main

main: $(OBJ_FILES)
	gcc $^ -o $@

%.o: %.c
	gcc $(INCLUDE) -c $^ -o $@

clean:
	@rm -f main $(OBJ_FILES)