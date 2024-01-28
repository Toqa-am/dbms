#!/bin/ksh
if [ -n "$(ls)" ]; 

    then
        print "Existing Tables: "
        ls     
else
        print "nO tables to show"
fi

