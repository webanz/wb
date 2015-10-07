#!/bin/bash 


venvSh=`env | grep virtualenvwrapper.sh  | awk -F= '{print $2}'`

# Source virtualenvwrapper
if [ -z $venvSh ];then
   echo 'Unable to source virtualenvwrapper.sh'
   exit 1
fi

source $venvSh 

venvs=`lsvirtualenv -b`

mapfile -t venvs < <( lsvirtualenv -b )

for v in "${venvs[@]}"
do 
  echo "Env : $v"
done 




