#!/bin/ksh
dbName=$1
print "Enter name of thable"
read table_name
tablePath=$table_name
if [ ! -f "$tablePath" ]; then
    print "Table does not exist."
    #./selectMenuTable.sh $1
else
    print "$table_name table contains: "
     cat "$tablePath"
    #./selectMenuTable.sh $1
fi
