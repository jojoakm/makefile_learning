CXX ?= g++
CXXFLAGS ?= -O2 -Wall -Wextra -std=c++17 -MMD -MP
INCLUDES := -Iinclude

SRC_DIR := src
BUILD_DIR := build
TARGET := stats_app

SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))
DEPS := $(OBJS:.o=.d)

.PHONY: all run clean help

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR) $(TARGET)

help:
	@echo "ex03_pattern_deps:"
	@echo "  make          # pattern rule build"
	@echo "  make run"
	@echo "  make clean"
	@echo "  note: uses -MMD -MP for auto header dependencies"

-include $(DEPS)

