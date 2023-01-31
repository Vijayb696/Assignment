#!/bin/bash
wfile=$1
wstr=$2

if [ $# -ne 2 ]; then
    echo "Invalid Number of Arguments"
    exit 1
fi

subpath=$(dirname ${wfile})

mkdir -p "$subpath"

echo "$wstr" > "$wfile"
