CC ?= gcc
CFLAGS ?= -O2 -Wall -Wextra
TARGET := hello
SRC := main.c

.PHONY: all run clean help

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

help:
	@echo "ex01_hello:"
	@echo "  make      # build"
	@echo "  make run  # run"
	@echo "  make clean"

