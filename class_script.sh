#!/bin/bash

if [[ "-r" == "$1" ]]; then
	for i in "$*"
	do
		rm -rf $i.cpp
		rm -rf $i.hpp
	done
else
	for i in $*
	do
		touch $i.cpp
		touch $i.hpp
		./class_header.sh $i
		./class_body.sh	$i
	done   
fi