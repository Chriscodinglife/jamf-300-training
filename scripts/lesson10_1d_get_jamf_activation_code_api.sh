#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

curl -X GET -su "$username:$password" "$jss_instance/JSSResource/activationcode" -H "accept: application/xml" | xmllint --xpath '//code/text()' -