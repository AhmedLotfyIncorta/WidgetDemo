#!/bin/bash 

echo -e "Git : List all non-merged changes on develop.\nCheck nonMergedBraches.csv file"

git for-each-ref --no-merged develop --sort=committerdate --format="%(committerdate) %09 %(authorname) %09 %(refname)" refs/remotes > nonMergedBraches.txt

cat nonMergedBraches.txt | tr "\\t" "," > nonMergedBraches.csv

open nonMergedBraches.csv

rm nonMergedBraches.txt
