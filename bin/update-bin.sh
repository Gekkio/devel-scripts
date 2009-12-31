#!/bin/sh

update_symlink() {
  TARGET="$HOME/bin/symlinks/$1"
  LINK="$HOME/$2"
  if [ -e "$TARGET" ]; then
    ln -f -v -s "$TARGET" "$LINK"
  fi
}

mkdir -p -v $HOME/bin/packages
mkdir -p -v $HOME/bin/symlinks
mkdir -p -v $HOME/.vim/ftdetect
mkdir -p -v $HOME/.vim/indent
mkdir -p -v $HOME/.vim/syntax

update_symlink "ant/bin/ant" "bin"
update_symlink "maven/bin/mvn" "bin"
update_symlink "scala/bin/fsc" "bin"
update_symlink "scala/bin/scala" "bin"
update_symlink "scala/bin/scalac" "bin"
update_symlink "scala/bin/scaladoc" "bin"
update_symlink "scala/misc/scala-tool-support/vim/ftdetect/scala.vim" ".vim/ftdetect"
update_symlink "scala/misc/scala-tool-support/vim/indent/scala.vim" ".vim/indent"
update_symlink "scala/misc/scala-tool-support/vim/syntax/scala.vim" ".vim/syntax"
