CXX ?= g++
CXXFLAGS ?= -O2 -Wall -Wextra -std=c++17
INCLUDES := -Iinclude

TARGET := calc
SRCS := src/main.cpp src/math_utils.cpp
OBJS := build/main.o build/math_utils.o

.PHONY: all run clean help

all: build $(TARGET)

build:
	mkdir -p build

build/main.o: src/main.cpp include/math_utils.h
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

build/math_utils.o: src/math_utils.cpp include/math_utils.h
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf build $(TARGET)

help:
	@echo "ex02_variables:"
	@echo "  make"
	@echo "  make run"
	@echo "  make CXX=clang++"
	@echo "  make CXXFLAGS='-O0 -g -std=c++17'"

