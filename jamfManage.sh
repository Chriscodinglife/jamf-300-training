#!/bin/bash

# This command will update the management framework on the loval device
sudo jamf manage
# Use the date command to time stamp when the script ran
management_text_file="/Users/Shared/ManangementTime.txt"
timestamp=$(date +%F\ %T)
echo $timestamp >> $management_text_file