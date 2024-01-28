#!/bin/ksh 

print  "Enter new Data base name: "
read name

#print "DB name: $name"
regex="^[^0-9[:punct:]].*"
regex2="^[^[:space:]]*$"
if [[ $name =~ $regex && $name =~ $regex2 ]]
then
if [[ ${#names[@]} -gt 0 ]]
then 
for db in ${names[@]}; do
	#print $db
	if [ $name = $db ]
	then
		print "Data base already exists"
		break;
	else
		print "Done!"
		names+=($name)
		mkdir $name
		break;
	fi

done
else


	print "Done!"
        names+=($name)
        mkdir $name

fi
else
	print "Not valid name"
fi

