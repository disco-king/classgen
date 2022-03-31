#!/bin/bash

echo

if [ -z $1 ]
then
	echo "Error"
	echo "Provide class name"
	echo 
	exit 1
fi

path="$(dirname $0)/sources/Example"

cwd=$(pwd)

c_source="$path.cpp"
h_source="$path.hpp"

c_name="${cwd}/${1}.cpp"
h_name="${cwd}/${1}.hpp"

if [ -e $c_name ] || [ -e $h_name ]
then
	echo "Error"
	echo "Target files already exist"
	echo
	exit 2
else
	echo "Target files not found, creating"
	echo
fi

if [ ! -r $c_source ] || [ ! -r $h_source ]
then
	echo "Error"
	echo "Source files inaccessible"
	echo 
	exit 3
fi

if [ ! -w $cwd ]
then
	echo "Error"
	echo "Destination folder inaccessible"
	echo 
	exit 4
fi	
	
if 	! cat $c_source | sed "s/Example/${1}/g" > $c_name || 
        ! cat $h_source | sed "s/Example/${1}/g" > $h_name
then
	echo "Error"
	echo "Target file creation failed"
	echo
	rm -f $c_name $h_name
	exit 5
fi

echo "Class ${1} created successfully"
echo 
