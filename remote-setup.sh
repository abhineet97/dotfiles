#!/bin/bash
#
# Download dotfiles from Github repo.

readonly BASE_URL="https://raw.githubusercontent.com/abhineet97/dotfiles/master"
readonly FILES=(".vimrc" ".jshintrc" ".gitconfig" ".wgetrc")

for file in ${FILES[@]}; do
  echo "${BASE_URL}/${file}"
  curl "${BASE_URL}/${file}" > "${HOME}/${file}"
done
