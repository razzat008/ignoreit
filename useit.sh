#!/usr/bin/env bash

ignore=$1 # first argument
ignore=${ignore,,} # lowercasing

# to check for dirs
BASE_URL="https://raw.githubusercontent.com/razzat008/ignoreit/master/gitignores"
url="$BASE_URL/$ignore.gitignore"

# what you're doing?
fetch() {
  echo "You're generating .gitignore for: $ignore"
  curl -fsSL "$1" -o /tmp/ignoreit.gitignore
  if [ -f .gitignore ]; then
    grep -Fxv -f .gitignore /tmp/ignoreit.gitignore >> .gitignore || true
  else
    cat /tmp/ignoreit.gitignore >> .gitignore
  fi
}

# please pass something bbg
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <language>"
  exit 1
fi

# checking if file exists
if curl -fsI "$url" > /dev/null; then  
  fetch "$url"
else
  echo "Couldn't find .gitignore for '$ignore'"
  exit 1
fi
