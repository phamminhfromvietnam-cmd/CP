CXX := g++
CXXFLAGS := -Wall -Wextra -O2
SRCS := $(wildcard src/*.cpp)
BINS := $(SRCS:src/%.cpp=bin/%)
all: $(BINS)
bin/%: src/%.cpp
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) $< -o $@
clean:
	@rm -rf bin
