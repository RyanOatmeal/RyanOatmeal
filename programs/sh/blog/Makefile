SOURCE_DIRECTORY := ../../../src
TARGET_DIRECTORY := ../../../docs_tmp
ASSETS_DIRECTORY := assets
STYLES_DIRECTORY := styles

SOURCE_MACRO_FILES := $(shell find $(SOURCE_DIRECTORY) -name '*.m4')

MATCH := $(SOURCE_DIRECTORY)/%.m4
REPLACE := $(TARGET_DIRECTORY)/%.html
TARGET_HTML_FILES := $(patsubst $(MATCH), $(REPLACE), $(SOURCE_MACRO_FILES))

STATIC_SOURCE_FILES := CNAME favicon.ico
STATIC_TARGETS := $(addprefix $(TARGET_DIRECTORY)/, $(STATIC_SOURCE_FILES))

# I still don't understand this, but I seem to need to it for
# all custom commands. 
.PHONY: all clean copy-the-rest


# So it seems like the way this works is you give "all" a list of lists of
# of files and/or commands that get read in left to right. 
# When it's a list of files, you give pattern rules with the target
# pattern followed by a colon followed by a source pattern followed
# by a list of commands where "$<" gives you the source file and 
# "$@" gives you the target file. 
all: $(TARGET_HTML_FILES) $(STATIC_TARGETS) copy-the-rest

$(TARGET_DIRECTORY)/%.html: $(SOURCE_DIRECTORY)/%.m4
	@mkdir -p $(dir $@)
	m4 --include=$(SOURCE_DIRECTORY) $< > $@
	@echo "Expanded $< -> $@"

$(TARGET_DIRECTORY)/%: $(SOURCE_DIRECTORY)/%
	@mkdir -p $(dir $@)
	cp $< $@
	@echo "Copied static file $< -> $@"

copy-the-rest:
	@mkdir -p $(TARGET_DIRECTORY)
	rm -rf $(TARGET_DIRECTORY)/$(ASSETS_DIRECTORY)
	rm -rf $(TARGET_DIRECTORY)/$(STYLES_DIRECTORY)
	cp -r $(SOURCE_DIRECTORY)/$(ASSETS_DIRECTORY) $(TARGET_DIRECTORY)
	cp -r $(SOURCE_DIRECTORY)/$(STYLES_DIRECTORY) $(TARGET_DIRECTORY)
	@echo "Rest of files copied over."

clean:
	rm -rf $(TARGET_DIRECTORY)
