#!/bin/ksh
read tname


if [[ -f $tname ]]; then
	print "Are you Sure You Want To drop $tname Table? y/n"
	read choice;
	case $choice in
		 [Yy]* )
			rm  $tname
			print "$tname has been deleted"
			;;
		 [Nn]* )
			print "Operation Canceled"
			;;
		* )
			print "Invalid Input 0 Tables changed"
			;;
	esac
else
	print "$tname doesn't exist"
fi
