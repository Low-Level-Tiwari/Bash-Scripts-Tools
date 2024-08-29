cat $1|sed -n '/<tr>/,/<\/tr>/p'|sed 's/<\/tr>//'|sed 's/<tr>//'|sed 's/<\/th>\|<\/td>/,/'|sed 's/<td>\|<th>//'|sed 's/\t*//'|paste -s -d,|sed 's/,,/,/g'|sed 's/,,/\n/g'|sed 's/^,\|,$//g'
