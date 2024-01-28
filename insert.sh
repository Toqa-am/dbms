#!/bin/ksh
ls
print "Enter table name"
read tbname
filename=$tbname
line_number=1
delimiter=":"

line=$(sed -n "${line_number}p" "$filename")
IFS="$delimiter"
print "\n">>"$tbname"
for field in $line; do
  print "Enter $field"
  read ff 
  print -n  "$ff" ":" >>"$tbname"
done

IFS=" "

