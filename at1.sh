#!/bin/bash

for i in `ls`
do
ext=${i##*.}
if [ ! -d $ext ]
then
in=`mkdir $ext`
cop=`mv $i $ext/`
else
copi=`mv $i $ext/`
fi
done
