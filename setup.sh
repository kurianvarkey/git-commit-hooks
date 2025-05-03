#!/bin/sh

echo -e "\e[34mConfiguring git hooksPath to .githooks folder for commit-msg and pre-push\e[0m"

git init
git config core.hooksPath .githooks
chmod +x .githooks/commit-msg
chmod +x .githooks/pre-commit