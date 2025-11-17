#!/bin/dash

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
touch recordings.txt

for file in tmp_recordings/*.txt; do
  [ -e "$file" ] || continue
  cat "$file" >> recordings.txt
  printf "\n" >> recordings.txt
done

sudo umount "$filepath"
sudo rm -r tmp
sudo rm -r tmp_recordings
