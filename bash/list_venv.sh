#!/bin/bash 


existVenv() {
 envName=$1 
 envRes=`lsvirtualenv -b | grep '^'$envName'$'`
 if [ "$envRes" == "$envName" ] ; then 
    return 0 
 else 
    return 1
 fi 
}


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

if existVenv "python3" ; then 
  echo "python3 exist" 
fi 


if existVenv "py" ; then 
  echo "py exist" 
fi 

# Checking if virtual env exist or not  
if [ `lsvirtualenv -b | grep python3` == 'python3' ]; then 
   echo "Virtual Env python3 exist" 
fi 





