#!/bin/bash

git branch -r --merged develop > mergedBranches.txt
git branch -r > allBranches.txt
diff -r mergedBranches.txt allBranches.txt > nonMerged.txt
open nonMerged.txt
