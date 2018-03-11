#!/bin/bash
file="$1"
echo "`sort $file | uniq `"

