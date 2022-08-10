#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
# export your username and password in terminal
# export passwordE="<>"
# export username="<>"

# Use curl to interact with the API
# -X Get indicated we are forming a GET reqeust, or a READ request
# -u indicates we are authenticating with basic auth, or sending the username and password
# -H is used to send the header, in this case the content type is XML
# -s to suppress the transfer information
# use xmllint --format to prettyprint the output, don't forget about the trailing - at the end of the command
curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers" -H "accept: application/xml" | xmllint --format -

# DOM stands for Document Object Module - it is the XML hierarchy