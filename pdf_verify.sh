#!/bin/bash

for file in $(find . -iname "*.pdf")
do
    echo "$file"
    pdfinfo "$file" 2>&1 | grep -i 'error' &> /dev/null
    if [ $? == 0 ]; then
       echo "broken -> try to fix"
    fi
done

