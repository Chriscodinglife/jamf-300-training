#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
# export your username and password in terminal
# export passwordE="<>"
# export username="<>"

curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/100" -H "accept: application/xml" | xmllint --format -