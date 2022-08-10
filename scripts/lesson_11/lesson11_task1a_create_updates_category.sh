#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
new_category="Updates"

curl -su $username:$password "$jss_instance/JSSResource/categories/id/0" -H "content-type: text/xml" -X POST -d "<category><name>$new_category</name></category>"