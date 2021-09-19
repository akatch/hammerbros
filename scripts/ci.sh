#!/bin/bash

# Checks for changes to the main branch
# If changes are detected, merge to local and rebuild the site

set -e

# Stash any local changes
git stash

# Check for updates
git fetch origin
new_commits=$(git log main..origin/main --pretty=oneline)

# if output was not empty, remote has changes that we don't have
if [[ "$new_commits" != "" ]]; then
    printf "Found new commits:\n%s\nMerging and rebuilding site..." "$new_commits"
    git merge
    hugo
    printf "done.\n"
fi

exit 0
