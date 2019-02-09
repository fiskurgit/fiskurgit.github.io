#!/bin/bash

# Todo
# gen.sh push - should look for any uncommited files, convert them, then push

function push_all {
  echo "Pushing all changes"
  #todo
}

#Check no args display help
if [ $# -eq 0 ] ; then
    echo " "
    echo "Converts .md to .html (rendered in-browser using js)"
    echo " "
    echo "Usage: gen.sh inputfile.md"
    exit 1
fi

if [[ $1 == push ]] ; then
  push_all
  exit 1
fi

#Check file exists
if [ ! -f "$1" ] ; then
    echo "File $1 does not exist"
    exit 1
fi

#Check if the file already has the script injected
first_line=$(head -n 1 $1)
already_has_script=false
if [[ $first_line == *"md-page.js"* ]] ; then
    echo "File already has markdown to html script"
    already_has_script=true

    if [ $# -eq 1 ] ; then
        exit 1
    fi
fi

if [ "$already_has_script" = false ] ; then
  #Inject MD-Page script import to top of file
  echo "Injecting js import to $1"
  echo "<script src=\"https://fiskurgit.github.io/md-page/md-page.js\"></script><noscript>
  $(cat $1)" > $1

  if [[ $1 == *.md ]] ; then
      echo "Converting file extension .md to .html"
      mv "$1" "$(basename "$1" .md).html"
  fi
fi

#If second arg is 'push' then commit file and push to repo
if [[ $2 == push ]] ; then
    echo "Pushing to repo"
    git add $1
    git commit -m "Updated $1"
    git push origin master
fi
