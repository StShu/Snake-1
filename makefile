.PHONY: clean all test run runtest

BIN_DIR = ./bin
BUILD_DIR = ./build
SRC_DIR = ./calcApp
TEST_DIR = ./test
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/calcApp.o $(BUILD_DIR)/functions.o
	g++ $(FLAGS) $(BUILD_DIR)/calcApp.o $(BUILD_DIR)/functions.o -o $(BIN_DIR)/main

$(BUILD_DIR)/calcApp.o:
	g++ $(FLAGS) -c $(SRC_DIR)/calcApp.cpp -o $(BUILD_DIR)/calcApp.o
	
$(BUILD_DIR)/functions.o:
	g++ $(FLAGS) -c $(SRC_DIR)/functions.cpp -o $(BUILD_DIR)/functions.o
	
	
run: 
	./bin/main

clean:
	rm -f build/*.o
	rm -f bin/main
