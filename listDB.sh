#!/bin/bash
if [ ${#names[@]} -gt 0 ]
then
	echo "DATA BASES:"
for db in ${names[@]}; do
        echo $db
done
else
	echo "No Databases to show"
fi

