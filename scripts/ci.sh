#!/bin/bash

# Checks for changes to the main branch
# If changes are detected, merge to local and rebuild the site

# Cron usage:
# !! Ensure the hugo and git binaries are in $PATH
# */15 * * * * cd $PROJECTDIR && scripts/ci.sh

set -e

# Check for updates
git fetch origin
new_commits=$(git log main..origin/main --pretty=oneline)

# if output was not empty, remote has changes that we don't have
if [[ "$new_commits" != "" ]]; then
    printf "Found new commits:\n%s\n" "$new_commits"
    git merge
    hugo
    touch .built
fi

exit 0
