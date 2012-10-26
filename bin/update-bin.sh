#!/bin/sh

update_application() {
	TARGET="$HOME/bin/symlinks/$1"
	ENTRY="$HOME/bin/.applications/$2.desktop"
  DIR="$HOME/.local/share/applications"
	if [ -e "$TARGET" ]; then
		mkdir -p "$DIR"
		HOME_ESCAPED=`echo "$HOME" | sed -e 's/\//\\\\\//g'`
		sed -e 's/$HOME/'"$HOME_ESCAPED"'/g' "$ENTRY" > "$DIR/$2.desktop"
  fi
}

update_symlink() {
  TARGET="$HOME/bin/symlinks/$1"
  LINK="$HOME/bin"
	if [ -e "$TARGET" ]; then
		mkdir -p "$LINK"
    ln -f -v -s "$TARGET" "$LINK"
  fi
}

update_launcher() {
  TARGET="$HOME/bin/symlinks/$1"
  LAUNCHER="$HOME/bin/.launchers/$2"
  LINK="$HOME/bin"
  if [ -e "$TARGET" ]; then
		mkdir -p "$LINK"
    ln -f -v -s "$LAUNCHER" "$LINK"
  fi
}

mkdir -p -v $HOME/bin/packages
mkdir -p -v $HOME/bin/symlinks

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

update_launcher "clojure" "clojure"
update_launcher "eclipse" "starteclipse"
update_launcher "liquibase" "liquibase"
update_launcher "maven" "mvn"
update_launcher "sbt" "sbt"
update_launcher "vimclojure" "ng-vimclojure"

update_application "eclipse" "eclipse"
