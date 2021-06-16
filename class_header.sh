#!/bin/bash

echo "#pragma once" >> $1.hpp
echo "#include <iostream>" >> $1.hpp
echo "" >> $1.hpp
echo "class $1" >> $1.hpp
echo "{" >> $1.hpp
echo "public:" >> $1.hpp
echo "	$1();" >> $1.hpp
echo "	$1(const std::string & name, const std::string & title);" >> $1.hpp
echo "	$1($1 const &toCopy);" >> $1.hpp
echo "	~$1();" >> $1.hpp
echo "	$1 &	operator = (const $1 & toCopy);" >> $1.hpp
echo "" >> $1.hpp
echo "protected:" >> $1.hpp
echo "" >> $1.hpp
echo "private:" >> $1.hpp
echo "" >> $1.hpp
echo "};" >> $1.hpp
echo "" >> $1.hpp
echo "std::ostream & operator << (std::ostream & stream, const $1 &$1);" >> $1.hpp