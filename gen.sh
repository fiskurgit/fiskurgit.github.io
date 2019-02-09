#!/bin/bash
#Check there's an argument
if [ $# -eq 0 ]
  then
    echo " "
    echo "Converts .md to .html (rendered in-browser using js)"
    echo " "
    echo "Usage: gen.sh inputfile.md"
    exit 1
fi

#Check if the file already has the script injected
first_line=$(head -n 1 $1)

if [[ $first_line == *"md-page.js"* ]]
  then
    echo "File already has markdown to html script"
    exit 1
fi

#Inject md>html JS to top of file
echo "Injecting js import to $1"
echo "<script src=\"https://fiskurgit.github.io/md-page/md-page.js\"></script><noscript>
$(cat $1)" > $1

if [[ $1 == *.md ]]
  then
    echo "Converting file extension .md to .html"
    mv "$1" "$(basename "$1" .md).html"
fi
