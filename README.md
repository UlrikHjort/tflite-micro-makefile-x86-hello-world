Makefile for building tflite tree for x86
tflite tree with hello world example isgenerated from tflite-micro root (https://github.com/tensorflow/tflite-micro) with:
python3 tensorflow/lite/micro/tools/project_generation/create_tflm_tree.py -e hello_world   ./tflm-tree
Copy makefile to created directory tflm-tree and execute make
Executable is generated in ./bin as main