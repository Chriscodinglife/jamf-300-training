#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

for building in Stamford WesPort Providence Dallas
do
    curl -su "$username:$password" "$jss_instance/JSSResource/buildings/id/0" -H "content-type: text/xml" -X POST -d "<building><name>$building</name></building>"
done


