#!/usr/bin/env bash

for i in *.symlink; do
  if [ ! -e ~/.$(basename $i .symlink) ]; then
    ln -s $PWD/$i ~/.$(basename $i .symlink)
    echo Linked $PWD/$i to ~/.$(basename $i .symlink)
  else
    echo .$(basename $i .symlink) exists in $HOME
  fi
done
