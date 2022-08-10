#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
update_site="Testing"

curl -su $username:$password "$jss_instance/JSSResource/computers/id/44" -H "content-type: text/xml" -X PUT -d "<computer><general><site><name>$update_site</name></site></general></computer>"