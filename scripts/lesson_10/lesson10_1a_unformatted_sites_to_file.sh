#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
# export your username and password in terminal
# export passwordE="<>"
# export username="<>"

# GET all sites
# Use > or -o to redirect output to a file
# NOTE: There will be no response as output is redirected to a file
# Quotes on the ~/Desktop/sites.xml are not needed as this will cause the literal value to be used
curl -X GET -su "$username:$password" "$jss_instance/JSSResource/sites" -H "accept: application/xml" > ~/Desktop/sites.xml