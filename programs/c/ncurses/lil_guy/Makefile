.POSIX:

SOURCE = main.c
BINARY_DIRECTORY = bin
TARGET = $(BINARY_DIRECTORY)/main

# I'm currently using the latest version of POSIX found
# here: https://pubs.opengroup.org/onlinepubs/9799919799/
# But if I ever don't want to use the latest version, I can lock
# it down by adding `-D_POSIX_C_SOURCE=199506L` to the 
# POSIX_VERSION_FLAG macro down below.
# See https://stackoverflow.com/questions/48332332/what-does-define-posix-source-mean/48332467#48332467
# and https://sourceware.org/glibc/manual/
POSIX_VERSION_FLAG =

$(TARGET): $(SOURCE)
	rm -rf "$@"; \
	mkdir -p "$$(dirname "$@")"; \
	gcc \
          -std=c89 \
          --pedantic-errors \
          -Wall \
          -Wextra \
          -Werror \
          $(POSIX_VERSION_FLAG) \
          -lncurses \
          -o "$@" \
          $(SOURCE)

all: $(TARGET) 
	@echo "Build Complete."

clean:
	rm -rf $(BINARY_DIRECTORY)
	echo "Cleaning complete."
