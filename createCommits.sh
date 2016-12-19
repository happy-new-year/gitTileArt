#!/bin/bash

COMMIT_FILES=./dateFiles

mkdir $COMMIT_FILES

for date in `cat dates.txt`;
do
    touch "$COMMIT_FILES/$date"
    git add "$COMMIT_FILES/$date"
    git commit --date "$date 13:33:37 +0000" -a -m "Commit for the $date tile"
done