# Makefile for building tflite tree for x86
# tflite tree with hello world example isgenerated from tflite-micro root (https://github.com/tensorflow/tflite-micro) with:
# python3 tensorflow/lite/micro/tools/project_generation/create_tflm_tree.py -e hello_world   ./tflm-tree
# Copy makefile to created directory tflm-tree and execute make
# Executable is generated in ./bin as main


INCLUDE := -I./third_party/kissfft/tools/ -I./third_party/kissfft/ -I./third_party/flatbuffers/include/ -I./third_party/gemmlowp/ -I./third_party/ruy/ -I./
CC := g++
BIN := ./bin
SRCS := $(shell find . -name '*.c') $(shell find . -name '*.cc')
EXE := $(BIN)/main
CFLAGS := -fpermissive
LDLIBS := -lm

.PHONY: all clean

all: $(EXE)


$(EXE): $(SRCS) | $(BIN)
	$(CC) $(INCLUDE)  $(CFLAGS) $^ -o $@ $(LDLIBS)


$(BIN):
	mkdir $@

clean:
	rm -rf $(BIN)
