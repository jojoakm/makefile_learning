CXX ?= g++
BUILD ?= release
INCLUDES := -Iinclude
CPPFLAGS := $(INCLUDES)
CXXFLAGS_COMMON := -std=c++17 -Wall -Wextra -MMD -MP

ifeq ($(BUILD),debug)
	CXXFLAGS := $(CXXFLAGS_COMMON) -O0 -g -DDEBUG
else ifeq ($(BUILD),release)
	CXXFLAGS := $(CXXFLAGS_COMMON) -O3 -DNDEBUG
else
$(error BUILD must be debug or release, got '$(BUILD)')
endif

SRC_DIR := src
BUILD_DIR := build/$(BUILD)
TARGET := formatter_app

SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))
DEPS := $(OBJS:.o=.d)

.PHONY: all run test clean help debug release

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET) Makefile 3

test: $(TARGET)
	@out="$$(./$(TARGET) hi 2)"; \
	if [ "$$out" = "hi hi" ]; then \
		echo "test passed"; \
	else \
		echo "test failed: $$out"; \
		exit 1; \
	fi

debug:
	$(MAKE) BUILD=debug

release:
	$(MAKE) BUILD=release

clean:
	rm -rf build $(TARGET)

help:
	@echo "ex04_build_modes:"
	@echo "  make BUILD=debug"
	@echo "  make BUILD=release"
	@echo "  make run"
	@echo "  make test"

-include $(DEPS)

