NVCC ?= nvcc
CUDA_ARCH ?= 89
TARGET := vec_add
SRC := vector_add.cu

NVCC_FLAGS := -O3 -std=c++17 \
	-gencode arch=compute_$(CUDA_ARCH),code=sm_$(CUDA_ARCH) \
	-gencode arch=compute_$(CUDA_ARCH),code=compute_$(CUDA_ARCH)

.PHONY: all run clean help

all: $(TARGET)

$(TARGET): $(SRC)
	$(NVCC) $(NVCC_FLAGS) $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

help:
	@echo "ex05_cuda_optional:"
	@echo "  make"
	@echo "  make CUDA_ARCH=89"
	@echo "  make run"

