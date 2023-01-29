#!/bin/sh

# Copying a file from one to other

dd if=sample of=SAMPLE conv=ucase status=none

diff -Nur sample SAMPLE > patchfile

cat patchfile

# Checking file 
patch --dry-run sample patchfile
# Patching file
patch sample patchfile # Alternative command:  patch -p1 < patchfile

patch < patchfile # AC : patch sample < patchfile

echo difference between two files now:
diff sample SAMPLE

rm patchfile
