#!/bin/sh

echo "--- Deploying binaries to $HOME/bin"

mkdir -p -v $HOME/bin
cp -v bin/* $HOME/bin
cp -T -r -v bin/applications $HOME/bin/.applications
cp -T -r -v bin/common $HOME/bin/.common
cp -T -r -v bin/launchers $HOME/bin/.launchers

echo "--- Running update-bin.sh"

which update-bin.sh > /dev/null

if [ "$?" = "0" ]; then
  update-bin.sh
else
  echo "Could not find update-bin.sh. Make sure $HOME/bin is in your PATH environment variable!"
fi
