#!/bin/bash

echo "#include <$1.hpp>" >> $1.cpp
echo "" >> $1.cpp
echo "$1::$1() :" >> $1.cpp
echo "{" >> $1.cpp
echo "}" >> $1.cpp
echo "" >> $1.cpp
echo "$1::$1() :" >> $1.cpp
echo "{" >> $1.cpp
echo "}" >> $1.cpp
echo "" >> $1.cpp
echo "$1::~$1()" >> $1.cpp
echo "{" >> $1.cpp
echo "}" >> $1.cpp
echo "" >> $1.cpp
echo "$1::$1($1 const &toCopy)" >> $1.cpp
echo "{" >> $1.cpp
echo "}" >> $1.cpp
echo "" >> $1.cpp
echo "$1 &	$1::operator = (const $1 & toCopy)" >> $1.cpp
echo "{" >> $1.cpp
echo "	if (this != &toCopy)" >> $1.cpp
echo "	{" >> $1.cpp
echo "	}" >> $1.cpp
echo "	return (*this);" >> $1.cpp
echo "}" >> $1.cpp
echo "" >> $1.cpp
echo "std::ostream & operator << (std::ostream & stream, const $1 &$1)" >> $1.cpp
echo "{" >> $1.cpp
echo "	return (stream);" >> $1.cpp
echo "}" >> $1.cpp