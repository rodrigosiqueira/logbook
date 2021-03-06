#!/bin/bash
# file.sh: a sample shell script to demonstrate the
# concept of Bash shell functions
# define usage function
# Reference: http://www.cyberciti.biz/faq/bash-shell-script-function-examples/

usage(){
  echo "Usage: $0 filename"
  exit 1
}

# define is_file_exits function 
# $f -> store argument passed to the script
is_file_exits(){
  local f="$1"
  [[ -f "$f" ]] && return 0 || return 1
}

# invoke  usage
# call usage() function if filename not supplied
[[ $# -eq 0 ]] && usage

# Invoke is_file_exits
if ( is_file_exits "$1" )
then
 echo "File found"
else
 echo "File not found"
fi
