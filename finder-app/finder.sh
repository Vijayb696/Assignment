#!/bin/sh

dir=$1
sstr=$2

if [ $# -ne 2 ]; then
    echo "Invalid Number of arguments"
    exit 1
fi

if [ ! -d "$dir" ]; then
    echo "enter proper directory"
    exit 1
fi

tfiles=$(find $dir -type f | wc -l)

mtlines=0

for i in $(find $dir -type f)
do
    if grep -q "$sstr" "$i"; then
        mtlines=$((mtlines+1))
    fi
done

echo "files are $tfiles and the number of matching lines are $mtlines"
