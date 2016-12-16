#!/bin/bash
#
# Clone and copy dotfiles from Github repo to remote computer.

readonly GIT_REPO="https://github.com/abhineet97/dotfiles"
readonly FILES=(".vimrc" ".jshintrc" ".gitconfig" ".wgetrc")

err() {
  echo "$@" >&2
  exit 1
}

if [[ -z $(which git) ]]; then
  err "git not installed."
fi

git clone ${GIT_REPO} "${HOME}/dotfiles"
if [[ "$?" -ne 0 ]]; then
  err "git clone failed."
fi

for file in ${FILES[@]}; do
  cp "${HOME}/dotfiles/${file}" "${HOME}/${file}"
done
