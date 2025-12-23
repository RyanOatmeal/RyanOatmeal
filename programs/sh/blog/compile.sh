#!/usr/bin/dash

# This is the script that generates my static website. 
# This must be ran in the root of the ryanoatmeal.github.io repo.

SOURCE_DIRECTORY="src"
TARGET_DIRECTORY="docs_tmp"
ASSETS_DIRECTORY="assets"
STYLES_DIRECTORY="styles"


# rm -r docs_tmp
cp -r "$SOURCE_DIRECTORY"/"$ASSETS_DIRECTORY" "$TARGET_DIRECTORY"/"$ASSETS_DIRECTORY"
cp -r "$SOURCE_DIRECTORY"/"$STYLES_DIRECTORY" "$TARGET_DIRECTORY"/"$STYLES_DIRECTORY"
cp  "$SOURCE_DIRECTORY"/CNAME "$TARGET_DIRECTORY"/CNAME
cp  "$SOURCE_DIRECTORY"/favicon.ico "$TARGET_DIRECTORY"/favicon.ico
