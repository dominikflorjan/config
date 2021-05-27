#!/bin/bash 

current=$(pacmd list-sinks | grep '\* index' | cut -c 12)

sinks_count=$(pacmd list-sinks | grep -e name: | wc -l)

((current=current+1))

if [ $current -gt $sinks_count ]
then 
    $current = 1
fi

echo $current

$(pacmd set-default-sink $current)

# if [ $current == "1" ];
# then 
    # $(pacmd set-default-sink 2)
# else 
    # $(pacmd set-default-sink 1)
# fi
