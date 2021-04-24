#!/bin/bash 

current=$(pacmd list-sinks | grep '\* index' | cut -c 12)

if [ $current == "2" ];
then 
    $(pacmd set-default-sink 3)
else 
    $(pacmd set-default-sink 2)
fi
