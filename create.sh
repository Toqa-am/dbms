#!/bin/bash

echo "Enter Table Name: "
read -r tbname

if [[ -f $tbname ]]; then
    echo "This Table: $tbname already exists";
else
    touch "$tbname";
    touch "$tbname.tp";
    
    echo "Enter Number of columns :"
    read -r numOfColumns;

    for ((i = 1; i <= numOfColumns; i++)); do
        echo "Enter column $i name :"
        read -r nameOfColumn;
        
        echo "Enter column datatype : [string/int]"
        read -r dateType;
        
        while [[ "$dateType" != "int" && "$dateType" != "string" || -z "$dateType" ]]; do
            echo "Invalid Date Type";
            echo "Enter column datatype : [string/int]"
            read -r dateType;
        done
        
        if [[ $i -eq $numOfColumns ]]; then
            echo "$nameOfColumn" >> "$tbname";
            echo "$dateType" >> "$tbname.tp";
        else
            echo -n "$nameOfColumn:" >> "$tbname";
            echo -n "$dateType:" >> "$tbname.tp";
        fi
    done

    echo "$tbname has been created"
fi
