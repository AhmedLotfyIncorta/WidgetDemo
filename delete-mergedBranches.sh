#!/bin/bash 

FEATURE_PREFIX="feature/"

List=$(git branch -r --merged develop)

for Item in ${List[*]} 
  do
  if [[ $Item == *$FEATURE_PREFIX* ]]
  then
    echo It will delete branch: $Item 
    git push origin --delete $Item
  fi
  done


