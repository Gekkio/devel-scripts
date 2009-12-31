#!/bin/sh

echo "--- Deploying binaries to $HOME/bin"

mkdir -p -v $HOME/bin
cp -r -v bin/* $HOME/bin

echo "--- Running update-bin.sh"

which update-bin.sh > /dev/null

if [ "$?" = "0" ]; then
  update-bin.sh
else
  echo "Could not find update-bin.sh. Make sure $HOME/bin is in your PATH environment variable!"
fi
