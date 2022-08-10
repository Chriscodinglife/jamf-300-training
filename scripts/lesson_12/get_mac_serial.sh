#!/bin/bash

# Use system_profiler with awk to gather the serial number of the Mac
# Turn it into a command substitution
mac_serial=$(system_profiler SPHardwareDataType | awk '/Serial Number/{print $NF}')

jss_instance="https://m300-10a.pro.jamf.training"

# Using echo to sanity check and make sure it works
echo $mac_serial

# Using curl to GET the computer ID while using the serial number variable above
# Turn it into command subtitution
computer_id=$(curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/serialnumber/$mac_serial" -H "content-type: text/xml" | xmllint --xpath '/computer/general/id/text()' -)

echo $computer_id
building="Sitka"

# Use curl to PUT (Update) the building on the computer
curl -su "$username:$password" "$jss_instance/JSSResource/computers/id/$computer_id" -H "content-type: text/xml" -X PUT -d "<computer><location><building>$building</building></location></computer>"