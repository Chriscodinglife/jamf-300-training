#!/bin/bash

device_assignments_txt=/Users/chris.orellana/Code/jamf-300-training/scripts/lesson_14/deviceAssignment.csv

IFS=,

while read room_number asset_tag serial_number
do
    curl -su "$username:$password" "$jss_instance/JSSResource/mobiledevices/id/0" -H "content-type: text/xml" -X POST -d "<mobile_device><general><room_number>$room_number</room_number><asset_tag>$asset_tag</asset_tag><serial_number>$serial_number</serial_number></general></mobile_device>"
done < $device_assignments_txt