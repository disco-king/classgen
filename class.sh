#!/bin/bash

if [ -z $1 ]
then
	echo "Error"
	echo "Provide class name"
	exit 1
fi

cwd=$(pwd)

c_name="${cwd}/${1}.cpp"
h_name="${cwd}/${1}.hpp"

ls ${c_name} > /dev/null 2>&1
search_cpp=$?
ls ${h_name} > /dev/null 2>&1
search_hpp=$?

if [ $(( search_cpp )) -eq 0 ] || [ $(( search_hpp )) -eq 0 ]
then
	echo "Error"
	echo "Target files already exist"
	exit 2
else
	echo "Target files not found, creating"
	echo
fi

if ! cat ~/.scripts/class/Example.cpp > ./.buff_file_for_example_cpp || 
   ! cat ~/.scripts/class/Example.hpp > ./.buff_file_for_example_hpp
then
	echo "Error"
	echo "Source files or destination folder inaccessible"
	rm -f .buff_file_for_example_cpp .buff_file_for_example_hpp
	exit 3
elif ! cat .buff_file_for_example_cpp | sed "s/Example/${1}/g" > $c_name || 
        ! cat .buff_file_for_example_hpp | sed "s/Example/${1}/g" > $h_name
then
	echo "Error"
	echo "File creation failed"
	rm -f c_name h_name
	rm -f .buff_file_for_example_cpp .buff_file_for_example_hpp
	exit 4
fi

rm -f .buff_file_for_example_cpp .buff_file_for_example_hpp
echo "Class ${1} created successfully"

