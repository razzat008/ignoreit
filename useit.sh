#!/bin/sh

ignore=$1
echo $ignore

if [[ $# -eq 0 ]]; then
  fetch $ignore
fi

fetch() {
  echo $1
}
