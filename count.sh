#!/bin/bash

Count=1

function0 () 
{
Command=$( crunch 20 20 ABCDEFGHIJKLMNOPQRSTUVWXYZ | grep -E "([A-Z])\1{1}" -v | head -n $Count | tail -n1 ) #Make the combination we need while filtering out consecutive characters
fastboot oem unlock $Command #Test to see if it works!

#Debugging:
#echo $Count
#echo $Command
Count=$(( $Count + 1 ))
}

while true; do
function0
done

# Is the largest starting combination ""ABABABABABABABABABAB"?
