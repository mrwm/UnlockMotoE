#!/bin/bash

Count=1

function0 () 
{
#echo $(crunch 20 20 ABCDEFGHIJKLMNOPQRSTUVWXYZ | head -n $Count | tail -n1)
Command=$( crunch 20 20 ABCDEFGHIJKLMNOPQRSTUVWXYZ | grep -E "([A-Z])\1{1}" -v | head -n $Count | tail -n1 )
#fastboot oem unlock 
echo $Count
echo $Command
Count=$(( $Count + 1 ))
}

while true; do
function0
done
