#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

#mac_serial=$(system_profiler SPHardwareDataType | awk '/Serial Number/{print $NF}')
mac_serial="CHRISJAMFEYV"

computer_id=$(curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/serialnumber/$mac_serial" -H "content-type: text/xml" | xmllint --xpath '/computer/general/id/text()' -)
assigned_user=$(curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/$computer_id" -H "content-type: text/xml" | xmllint --xpath '/computer/location/username/text()' -)
computer_site=$(curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/$computer_id" -H "content-type: text/xml" | xmllint --xpath '/computer/general/site/text()' -)

echo "Computer ID is $computer_id"
echo "Computer Serial is $mac_serial"
echo "Computer Assigned User is $assigned_user"
echo "Computer Site is $computer_site"