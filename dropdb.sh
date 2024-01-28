#!/bin/ksh
print  "Available DataBases"
ls -1
#if [ `pwd` != $parent ]
#then 
#	cd ..
#fi
print "Enter DataBase Name: "
read dropname


if [[ -d $dropname ]]; then
	print "Are you Sure You Want To drop $dropname Database? y/n"
	read choice;
	case $choice in
		 [Yy]* ) 
			rm -r  $dropname
			print "$dropname has been deleted"
			;;
		 [Nn]* ) 
			print "Operation Canceled"
			;;
		* ) 
			print "Invalid Input 0 DataBases changed"
			;;
	esac
else
	print "$dropname doesn't exist"
fi
