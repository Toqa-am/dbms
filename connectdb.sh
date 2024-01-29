#!/bin/ksh
print "Enter the name of the database you want to connect with: "
read  connectedDB
	
	if [[ -d $connectedDB ]];then
		
		print You are now connected to $connectedDB database
	        cd $connectedDB
		PS3="Enter your choice  "
		select choice in "Create table" "List tables" "Drop table" "Insert into table" "select from table"
		do
        	case $REPLY in
                1) source ../create.sh
                        ;;
                2) source ../listTable.sh 
                        ;;
                3)
                 source ../dropT.sh
 
                        ;;
                4)
                 
                 source ../insert.sh
                        ;;
		5) 
		 source ../select.sh

			;;
		
        esac
done
		
                #source createTable.sh
	else
		
		print No database with name $connectedDB
		
	fi
