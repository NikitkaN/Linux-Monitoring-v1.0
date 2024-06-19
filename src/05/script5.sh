#!/bin/bash
. ./lib.sh

start=`date +%s`

if [[ -n $1 ]]
then
  if [ -d $1 ]
  then
    if [[ ${1: -1} = "/" ]]
    then
      print_folders_number $1
      print_top5_folders $1
      print_files_number $1
      print_conf_files $1
      print_top10_files $1
      print_top10_exec_files $1
      print_execution_time $start
    else
      echo "Directory should end with '/'"
    fi
  else
    echo "Directory not exist"
  fi
else
  echo "Parameter is required. Try again."
fi
