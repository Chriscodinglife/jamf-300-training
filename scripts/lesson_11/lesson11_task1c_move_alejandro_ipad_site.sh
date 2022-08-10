#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
update_site="Production"

curl -su "$username:$password" "$jss_instance/JSSResource/mobiledevices/id/19" -H "content-type: text/xml" -X PUT -d "<mobile_device><general><site><name>$update_site</name></site></general></mobile_device>"