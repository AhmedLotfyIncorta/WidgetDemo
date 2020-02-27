#!/bin/bash 

FEATURE_PREFIX="feature/"

ORIGIN="origin/"

Branch_Name_After_Origin_AFTAR_ORIGIN_INDEX=${#ORIGIN}

Merged_Branches_List=$(git branch -r --merged develop)

for Branch in ${Merged_Branches_List[*]} 
  do
  if [[ $Branch == *$FEATURE_PREFIX* ]]
  then
    Branch_Name_After_Origin=${Branch:$Branch_Name_After_Origin_AFTAR_ORIGIN_INDEX}
    echo $Branch_Name_After_Origin
  fi
  done > MergedBraches.txt
  
  open MergedBraches.txt 