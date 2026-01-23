#!/usr/bin/dash

quickget windows 11
sed -i "s|^fixed_iso|# fixed_iso|" windows-11.conf
cp ~/Binaries/Windows-11.iso windows-11/windows-11.iso
