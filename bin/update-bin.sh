#!/bin/bash

set -euo pipefail

BINDIR=$(readlink -f $(dirname $0))

update_application() {
  TARGET="${BINDIR}/symlinks/${1}"
  NAME="${2:-${1}}"
  ENTRY="${BINDIR}/.applications/${NAME}.desktop"
  OUT_DIR="${HOME}/.local/share/applications"
  OUT_ENTRY="${OUT_DIR}/${NAME}.desktop"
  if [ -e "${TARGET}" ]; then
    mkdir -p "${OUT_DIR}"
    HOME_ESCAPED=`echo "${HOME}" | sed -e 's/\//\\\\\//g'`
    sed -e 's/$HOME/'"${HOME_ESCAPED}"'/g' "${ENTRY}" > "${OUT_ENTRY}"
    echo "'${ENTRY}' -> '${OUT_ENTRY}'"
  fi
}

update_symlink() {
  TARGET="${BINDIR}/symlinks/${1}"
  if [ -e "${TARGET}" ]; then
    ln -fvs "${TARGET}" "${BINDIR}"
  fi
}

update_launcher() {
  TARGET="${BINDIR}/symlinks/${1}"
  NAME="${2:-${1}}"
  LAUNCHER="${BINDIR}/.launchers/${NAME}"
  if [ -e "${TARGET}" ]; then
    ln -fvs "${LAUNCHER}" "${BINDIR}"
  fi
}

mkdir -pv "${BINDIR}/packages"
mkdir -pv "${BINDIR}/symlinks"

update_symlink "ant/bin/ant"

update_symlink "atlassian-plugin-sdk/bin/atlas-clean"
update_symlink "atlassian-plugin-sdk/bin/atlas-cli"
update_symlink "atlassian-plugin-sdk/bin/atlas-clover"
update_symlink "atlassian-plugin-sdk/bin/atlas-compile"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-bamboo-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-crowd-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-fecru-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-home-zip"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-jira-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-refapp-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-debug"
update_symlink "atlassian-plugin-sdk/bin/atlas-help"
update_symlink "atlassian-plugin-sdk/bin/atlas-install-plugin"
update_symlink "atlassian-plugin-sdk/bin/atlas-integration-test"
update_symlink "atlassian-plugin-sdk/bin/atlas-mvn"
update_symlink "atlassian-plugin-sdk/bin/atlas-package"
update_symlink "atlassian-plugin-sdk/bin/atlas-release"
update_symlink "atlassian-plugin-sdk/bin/atlas-release-rollback"
update_symlink "atlassian-plugin-sdk/bin/atlas-ruin"
update_symlink "atlassian-plugin-sdk/bin/atlas-run"
update_symlink "atlassian-plugin-sdk/bin/atlas-unit-test"
update_symlink "atlassian-plugin-sdk/bin/atlas-version"

update_symlink "scala/bin/fsc"
update_symlink "scala/bin/scala"
update_symlink "scala/bin/scalac"
update_symlink "scala/bin/scaladoc"
update_symlink "scala/bin/scalap"

update_launcher "apktool"
update_launcher "eclipse"
update_launcher "liquibase"
update_launcher "maven" "mvn"
update_launcher "sbt"

update_application "android-studio"
update_application "arduino"
update_application "dbeaver"
update_application "eagle"
update_application "eclipse"
update_application "idea"
update_application "webstorm"
