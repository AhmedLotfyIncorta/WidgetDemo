#!/bin/bash 

deleteAll() {
   for Branch in $1 
    do
      git push origin --delete $Branch
    done
 }

IFS=$'\n' read -rd '' -a Merged_Branches_List <$1

echo -e This bash script will delete all attached branches: 

for Branch in ${Merged_Branches_List[*]} 
do
    echo $Branch 
done

read -r -p "Are you sure? [yes/no]" response
 if [[ $response =~ ^(yes) ]]; then
    deleteAll ${Merged_Branches_List[@]]}
  else
    echo Cancelled
 fi

 echo Exit