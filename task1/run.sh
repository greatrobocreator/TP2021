#!/bin/bash

mkdir $3
find $1 -name "*.$2" -exec cp --parents \{\} $3/ \;
#counter=0

#for i in $(find $1 -name "*.$2" -type f -printf "%f\n")
#do
#    cp "$PWD/$i" "$PWD/$3/${counter}_$i"
#    ((counter++))
#done

tar -czf $4 $3/
echo "done"
