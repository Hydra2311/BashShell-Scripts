#!/bin/bash

file=/mnt/c/Users/Hydra/Desktop/Χρήστος/Ωρες.txt

echo "1.Αρχαία 2.Γλώσσα"
read ans1

echo "1.Mία ώρα 2.Μιάμιση ώρα 3.Δύο ώρες"
read ans2

if [[ "$ans1" == "1" ]] then
    if [[ "$ans2" == "1" ]] then
        echo "$(date +%d/%m/%Y) Αρχαία 1 ώρα" >> $file
    elif [[ "$ans2" == "2" ]] then
        echo "$(date +%d/%m/%Y) Αρχαία 1.5 ώρα" >> $file 
    else    
        echo "$(date +%d/%m/%Y) Αρχαία 2 ώρες" >> $file
    fi
else
    if [[ "$ans2" == "1" ]] then
        echo "$(date +%d/%m/%Y) Γλώσσα 1 ώρα" >> $file
    elif [[ "$ans2" == "2" ]] then
        echo "$(date +%d/%m/%Y) Γλώσσα 1.5 ώρα" >> $file 
    else    
        echo "$(date +%d/%m/%Y) Γλώσσα 2 ώρες" >> $file
    fi
fi
