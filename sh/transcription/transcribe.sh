#!/bin/dash

# There is a lot of logic in here and things that need to be checked
# with rust binaries. This will be a good exercise.

DIR="docs/private"

# I hate unix one letter flags lol. This means "not exist <directory name>".
if [ ! -e "$DIR" ]; then
  printf "%s%s\n" \
         "ERROR: $DIR doesn't exist. Decrypt the directory with: " \
         "\`dash scripts/encryption/decrypt.sh\`."
  exit 1
fi

lsblk
echo "Enter filepath to mount: "
read filepath
mkdir tmp
sudo mount "$filepath" tmp

mkdir tmp_recordings
sudo mv tmp/REC_FILE/*/* tmp_recordings
sudo rm -r tmp/REC_FILE/*
cd tmp_recordings

for f in *.mp3; do
  if [ -f "$f" ]; then
    whisperx "$f" --compute_type int8
  fi
done

cd ../
TRANSCRIPTION_FILE="docs/private/transcriptions.md"

printf "# %s\n" "$(date)" >> "$TRANSCRIPTION_FILE"
printf "\n" >> "$TRANSCRIPTION_FILE"

for file in tmp_recordings/*.txt; do
  [ -e "$file" ] || continue
  cat "$file" >> "$TRANSCRIPTION_FILE"
  printf "\n" >> "$TRANSCRIPTION_FILE" 
done

sudo umount "$filepath"
sudo rm -r tmp

echo "###################################################################"
echo "###################################################################"
echo "###################################################################"
echo "Succesful transcription. Make sure to delete or move tmp_recordings"
echo "before running this script again."
echo "For example: sudo rm -r tmp_recordings"
echo "For example: sudo mv tmp_recordings ../tmp_recordings"
