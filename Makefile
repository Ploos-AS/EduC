CC ?= cc
CFLAGS ?= -std=c17 -Wall -Wextra -Wpedantic -Wconversion -Wshadow
BUILD := build
EXAMPLES := examples/hello/hello.c

.PHONY: all check validate clean
all: $(BUILD)/hello
$(BUILD):
	mkdir -p $(BUILD)
$(BUILD)/hello: $(EXAMPLES) | $(BUILD)
	$(CC) $(CFLAGS) $< -o $@
check: all validate
	./$(BUILD)/hello
clean:
	rm -rf $(BUILD)

validate:
	python3 tools/validate.py
