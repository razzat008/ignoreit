#!/usr/bin/env bash

ignore=$1 # first argument to the script
ignore=${ignore,,} # making things small
file="./gitignores/$ignore.gitignore"

fetch() {
  echo "You're generating .gitignore for: $ignore"
  get_ignores "$1" >> test.txt
}

get_ignores() {
  cat $1
}

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <language>"
  exit 1
fi

if [[ -f "$file" ]]; then
  fetch "$file"
else
  echo "Couldn't find the specified .gitignore."
  exit 1
fi
