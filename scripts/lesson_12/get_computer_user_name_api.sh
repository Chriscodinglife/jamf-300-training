#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
computer_id="100"

read -p "What is your Jamf Pro username? " jamf_username
read -sp "What is your Jamf Pro password? " jamf_password
echo ""

user=$(curl -su "$jamf_username:$jamf_password" "$jss_instance/JSSResource/computers/id/$computer_id" -H "content-type: text/xml" | xmllint --xpath '/computer/location/username/text()' -)

echo "The username for computer ID $computer_id is $user"