# Fix PS files, first using pkfix-helper and then pkfix. Also removes
# temporary files.
# Ananth Raghunathan (ananthr@cs.stanford.edu)

#!/bin/sh

if [ $# -eq 1 ]; then
  pkfix-helper $1.ps $1-fix.ps
  if [ $? -eq 0 ]; then
    pkfix $1-fix.ps $1-fix-fix.ps
    if [ $? -eq 0 ]; then
      ps2pdf $1-fix-fix.ps $1.pdf
      rm -i $1-fix-fix.ps
    fi
    rm -i $1-fix.ps
  fi
  echo "Now opening file. Check to see if pdf was generated correctly."
  open $1.pdf
  rm -i $1.ps
else 
  echo "Syntax: ./fixps.sh <filename without the .ps>"
fi
