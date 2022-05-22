#!/bin/bash

# Name: Barry Diaz
# Title: Student Search
# Date: May 19, 2021

if [ $# -ne 1 ]; then
    echo "Usage: $(basename $0) [directory path]"
    exit 1
fi

FILE="students.txt"
DIRECT=$HOME/Downloads/"submissions"
MOVETO=$1/"subs"

mkdir -p $MOVETO

cd $HOME/Downloads
unzip -d $DIRECT submissions.zip > status.txt
cd -

while read -r line; do
    found=$(find $DIRECT -iname "$line*")
    if [[ -z $found ]]; then
        echo "$line was not found."
    else
        mv $found $MOVETO
    fi
done < $FILE

rm -rf $DIRECT