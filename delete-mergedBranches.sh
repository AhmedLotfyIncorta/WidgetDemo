#!/bin/bash 

deleteAll() {
  Branches=("$@")
   for Branch in $Branches 
    do
      echo $Branch
      git push origin --delete $Branch
    done
 }

IFS=$'\n' read -rd '' -a Merged_Branches_List <$1

if [ ${#Merged_Branches_List[@]} -eq 0 ]; then
    echo "Warning: empty branches."
    echo Exit
    exit 1
fi

echo -e This bash script will delete all attached branches: 

for Branch in ${Merged_Branches_List[*]} 
do
    echo $Branch 
done

read -r -p "Are you sure? [yes/no]" response
 if [[ $response =~ ^(yes) ]]; then
    deleteAll "${Merged_Branches_List[@]}"
  else
    echo Cancelled
 fi

 echo Exit