#!/bin/bash

if git config remote.template.url > /dev/null; then
  echo "Template Found! Skipping Creation of remote template config."
  else
  echo "Adding Remote Template Link"
  git remote add template https://github.com/SFDO-SE/NxDO-PACKAGE-REPO-TEMPLATE
fi

echo "Fetching Changes"
git fetch --all

echo "Comparing Changes with main branch"
git merge template/main --allow-unrelated-histories
