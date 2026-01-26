.POSIX:

SOURCE = main.c
BINARY_DIRECTORY = bin
TARGET = $(BINARY_DIRECTORY)/main

$(TARGET): $(SOURCE)
	rm -rf "$@"; \
	mkdir -p "$$(dirname "$@")"; \
	gcc \
          -std=c89 \
          --pedantic-errors \
          -Wall \
          -Wextra \
          -Werror \
          -D_POSIX_C_SOURCE=199506L \
          -o "$@" \
          $(SOURCE)

all: $(TARGET) 
	@echo "Build Complete."

clean:
	rm -rf $(BINARY_DIRECTORY)
	echo "Cleaning complete."
