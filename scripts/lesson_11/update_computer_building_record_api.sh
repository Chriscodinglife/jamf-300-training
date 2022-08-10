#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

curl -su $username:$password "$jss_instance/JSSResource/computers/id/100" -H "content-type: text/xml" -X PUT -d "<computer><location><building>Anchorage</building></location></computer>"