CC ?= cc
CFLAGS ?= -std=c17 -Wall -Wextra -Wpedantic -Wconversion -Wshadow
BUILD := build

.PHONY: all check validate clean
all: $(BUILD)/hello $(BUILD)/build-model $(BUILD)/types $(BUILD)/control-flow $(BUILD)/functions

$(BUILD):
	mkdir -p $(BUILD)

$(BUILD)/hello: examples/hello/hello.c | $(BUILD)
	$(CC) $(CFLAGS) $< -o $@

$(BUILD)/build-model: examples/build-model/main.c examples/build-model/greeting.c examples/build-model/greeting.h | $(BUILD)
	$(CC) $(CFLAGS) examples/build-model/main.c examples/build-model/greeting.c -o $@

$(BUILD)/types: examples/types/types.c | $(BUILD)
	$(CC) $(CFLAGS) $< -o $@

$(BUILD)/control-flow: examples/control-flow/control-flow.c | $(BUILD)
	$(CC) $(CFLAGS) $< -o $@

$(BUILD)/functions: examples/functions/functions.c | $(BUILD)
	$(CC) $(CFLAGS) $< -o $@

check: all validate
	./$(BUILD)/hello
	./$(BUILD)/build-model
	./$(BUILD)/types
	./$(BUILD)/control-flow
	./$(BUILD)/functions

clean:
	rm -rf $(BUILD)

validate:
	python3 tools/validate.py
