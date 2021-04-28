#!/bin/bash 

current=$(pacmd list-sinks | grep '\* index' | cut -c 12)

if [ $current == "1" ];
then 
    $(pacmd set-default-sink 2)
else 
    $(pacmd set-default-sink 1)
fi
