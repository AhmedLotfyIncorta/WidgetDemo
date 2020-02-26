#!/bin/bash 

FEATURE_PREFIX="feature/"

ORIGIN="origin/"

BRANCH_NAME_AFTAR=${#ORIGIN}

Merged_Branches_List=$(git branch -r --merged develop)

for Branch in ${Merged_Branches_List[*]} 
  do
  if [[ $Branch == *$FEATURE_PREFIX* ]]
  then
    Branch_Name=${Branch:$BRANCH_NAME_AFTAR}
    echo It will delete branch: $Branch_Name 
    # git push origin --delete $Branch
  fi
  done


