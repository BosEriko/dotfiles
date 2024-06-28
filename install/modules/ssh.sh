#!/usr/bin/env sh

# Generate SSH Key
ssh-keygen -C bos.eriko@gmail.com
echo "Installing: SSH Key has been generated."

# Add GitHub, GitLab and Bitbucket
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
ssh-keyscan -t rsa gitlab.com >> ~/.ssh/known_hosts
ssh-keyscan -t rsa bitbucket.org >> ~/.ssh/known_hosts
echo "Installing: Add GitHub, GitLab and Bitbucket to known_hosts"
