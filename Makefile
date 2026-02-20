EXERCISES := ex01_hello ex02_variables ex03_pattern_deps ex04_build_modes ex05_cuda_optional

.PHONY: list all clean run-% help

list:
	@echo "Available exercises:"
	@for d in $(EXERCISES); do echo "  - $$d"; done
	@echo ""
	@echo "Examples:"
	@echo "  make all"
	@echo "  make run-ex01"
	@echo "  make clean"

all:
	@for d in $(EXERCISES); do \
		echo ">>> Building $$d"; \
		$(MAKE) -C $$d; \
	done

run-ex01:
	@$(MAKE) -C ex01_hello run

run-ex02:
	@$(MAKE) -C ex02_variables run

run-ex03:
	@$(MAKE) -C ex03_pattern_deps run

run-ex04:
	@$(MAKE) -C ex04_build_modes run

run-ex05:
	@$(MAKE) -C ex05_cuda_optional run

clean:
	@for d in $(EXERCISES); do \
		echo ">>> Cleaning $$d"; \
		$(MAKE) -C $$d clean; \
	done

help: list

