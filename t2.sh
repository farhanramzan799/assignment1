#!/bin/bash
IFS=$'\n'
filename=$1
count=1
evenfile=`touch evenfile.txt`
oddfile=`touch oddfile.txt`
for i in `cat $filename`
do
rem=$(($count % 2))
if [ $rem -eq 0 ]
then
out=`echo $i >> evenfile.txt`
else
out=`echo $i >> oddfile.txt`
fi
count=`expr $count + 1`
done

