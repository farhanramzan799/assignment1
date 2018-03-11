#!/bin/bash

isLower()
{
	st="LIFe is beautiful"
	echo ${st,,}
}

is_root()
{
name=`whoami`
root=`id -u root`
if [ $root -eq 0 ] && [ $name = "root" ]
then
	echo "root"
	return 0
else
	echo "not root"
	return 1
fi
}

is_user_exist()
{
	user="farhan"
	userid=`id -u $user`
	in=`grep $userid /etc/passwd | grep $user /etc/passwd | wc -l`
	
	if [ $in -eq 1 ]
	then
		echo "true"
		return 0

	else
		echo "false"
		return 1
	
	fi
	
}

isLower
is_root
is_user_exist

