#!/bin/bash

current=$(pacmd list-sinks | grep '\* index' | cut -c 12)

if [ $current == "2" ];
then
    echo "Głośniki"
else 
    echo "HyperX"
fi
