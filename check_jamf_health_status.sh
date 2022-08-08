#!/bin/bash

# Using a curl command to find the health status of my JAMF Pro Server
# Also use a -s with curl to hide the header information
jamf_health_url="https://m300-10a.pro.jamf.training/healthCheck.html"
health_check=$(curl -s $jamf_health_url)

# Using echo to sanity check my command substitution
# echo $health_check

if [[ $health_check == "[]" ]]; then
    echo "JAMF Pro Server is healthy"
else
    echo "JAMF Pro Server is not healthy"
fi