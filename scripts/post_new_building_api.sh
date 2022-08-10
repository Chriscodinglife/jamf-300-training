#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"

# ID of 0 will post or create a new building with a new building ID
# Telling the server that I am posting new data
# -X POST -d will post data to the server
# -H "Content-Type: text/xml" will be used to tell the server you are posting XML data
# Use Dom format for formatting the path and closing it
curl -su $username:$password "$jss_instance/JSSResource/buildings/id/0" -H "content-type: text/xml" -X POST -d "<building><name>Anchorage</name></building>"