#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computergroups/name/All%20Managed%20Clients" -H "accept: application/xml" | xmllint --format -