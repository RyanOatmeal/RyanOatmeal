.POSIX:

SOURCE = hello.c
BINARY_DIRECTORY = bin
TARGET = $(BINARY_DIRECTORY)/hello


HTML_DIRECTORY = html
HTML_INDEX = $(HTML_DIRECTORY)/index.html
JS_TARGET = $(HTML_DIRECTORY)/hello.mjs
EMSCRIPTEN_PTY_FILE = emscripten-pty.js

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

$(JS_TARGET): $(SOURCE) $(EMSCRIPTEN_PTY_FILE)
	npm install; \
	rm -rf "$@"; \
	mkdir -p "$$(dirname "$@")"; \
	cp $(HTML_INDEX) $(HTML_TARGET); \
	emcc \
          -s FORCE_FILESYSTEM \
          -s ASYNCIFY \
          --js-library=emscripten-pty.js \
          -o hello.mjs \
          hello.c

$(EMSCRIPTEN_PTY_FILE):
	wget https://unpkg.com/xterm-pty/emscripten-pty.js

all: $(TARGET) $(HTML_TARGET)
	@echo "Build Complete."

clean:
	rm -rf $(BINARY_DIRECTORY)
	rm -rf $(HTML_DIRECTORY)
	rm -rf node_modules
	rm -rf package-lock.json
	rm -rf $(EMSCRIPTEN_PTY_FILE)
	echo "Cleaning complete."
