#!/bin/bash

set -euo pipefail

TARGET="${HOME}/bin"

echo "--- Deploying binaries to ${TARGET}"

mkdir -pv "${TARGET}"
find bin -maxdepth 1 -type f -not -name '\.*' -exec cp -uv {} "${TARGET}/" \;

cp -Truv bin/applications "${TARGET}/.applications"
cp -Truv bin/common "${TARGET}/.common"
cp -Truv bin/launchers "${TARGET}/.launchers"

echo "--- Running update-bin.sh"

"${TARGET}/update-bin.sh"
