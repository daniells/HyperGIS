#!/bin/bash
nano gitmsg
git add -A
git status
git commit -F gitmsg
git push -u origin master