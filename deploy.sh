#!/bin/bash

rm -rf public/

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t academic # if using a theme, replace with `hugo -t <YOURTHEME>`

# Check for external updates to website
cd krauselab_website/

git fetch
git pull

# Copy over new content
cp -r ../public/* .

# Add changes to git.

git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
