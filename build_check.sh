#!/bin/bash

# get the latest commit message from git
commit_message=$(git log -1 --pretty=%B)

# check if :skip: is in the commit message and if so, return with exit code 0 else return with exit code 1
if [[ $commit_message == *":skip:"* ]]; then
  echo "Skipping build"
#   exit 0
else
    echo "Building"
#   exit 1
fi
