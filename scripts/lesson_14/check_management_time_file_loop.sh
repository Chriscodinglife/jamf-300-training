#!/bin/bash

manage_time_txt=/Users/Shared/managementTime.txt

while [[ -f $manage_time_txt ]]
do
    echo "$manage_time_txt file exists"
    sleep .5
done

echo "The $manage_time_txt file is gone."