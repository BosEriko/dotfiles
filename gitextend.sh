#!/bin/sh

git-rework {
  git stash;
  git clean -fd;
}
