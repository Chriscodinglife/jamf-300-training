#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
# export your username and password in terminal
# export passwordE="<>"
# export username="<>"

# Use xmmlint with --xpath to read specific elements from the DOM of the XML
# Add test() to remove the XML tags, and don't get about the trailing tags
curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/100" -H "accept: application/xml" | xmllint --xpath '/computer/general/mac_address/text()' -

# Another way to run the same command above is to use the relative short path for macaddress
# Use two // in xpath to not have to put the full path in the DOM
curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/100" -H "accept: application/xml" | xmllint --xpath '//mac_address/text()' -