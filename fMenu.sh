#!/bin/ksh
PS3="Enter your choice  "
select choice in "Create database" "List databases" "Connect database" "Drop database"
do
	case $REPLY in
		1) source ./createDB.sh
			;;
		2) source ./listDB.sh
			;;
		3) 
		 source ./connectdb.sh
			;;
		4)
		 #cd $parent1
	         source ./dropdb.sh
			;;
	esac
done
