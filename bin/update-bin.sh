#!/bin/sh

update_symlink() {
  TARGET="$HOME/bin/symlinks/$1"
  LINK="$HOME/$2"
  if [ -e "$TARGET" ]; then
    ln -f -v -s "$TARGET" "$LINK"
  fi
}

update_launcher() {
  TARGET="$HOME/bin/symlinks/$1"
  LAUNCHER="$HOME/bin/.launchers/$2"
  LINK="$HOME/$3"
  if [ -e "$TARGET" ]; then
    ln -f -v -s "$LAUNCHER" "$LINK"
  fi
}

mkdir -p -v $HOME/bin/packages
mkdir -p -v $HOME/bin/symlinks

update_symlink "ant/bin/ant" "bin"

update_symlink "atlassian-plugin-sdk/bin/atlas-clean" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-cli" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-clover" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-compile" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-bamboo-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-crowd-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-fecru-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-home-zip" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-jira-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-create-refapp-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-debug" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-help" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-install-plugin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-integration-test" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-mvn" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-package" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-release" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-release-rollback" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-ruin" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-run" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-unit-test" "bin"
update_symlink "atlassian-plugin-sdk/bin/atlas-version" "bin"

update_symlink "scala/bin/fsc" "bin"
update_symlink "scala/bin/sbaz" "bin"
update_symlink "scala/bin/sbaz-setup" "bin"
update_symlink "scala/bin/scala" "bin"
update_symlink "scala/bin/scalac" "bin"
update_symlink "scala/bin/scaladoc" "bin"
update_symlink "scala/bin/scalap" "bin"

update_launcher "clojure" "clojure" "bin"
update_launcher "eclipse" "starteclipse" "bin"
update_launcher "liquibase" "liquibase" "bin"
update_launcher "maven" "mvn" "bin"
update_launcher "sbt" "sbt" "bin"
update_launcher "vimclojure" "ng-vimclojure" "bin"
