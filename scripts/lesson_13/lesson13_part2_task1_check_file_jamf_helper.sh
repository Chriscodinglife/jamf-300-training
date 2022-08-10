#!/bin/bash

# A script to be used within a Jamf Pro Policy and to check if a file exists.
# Use Parameters 4 and 5 to pass in the file path and the message to display.
fileToCheck="$4"
messageToDisplay="$5"

jamfHelper="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper" 

if [[ -e "$fileToCheck" ]]; then

  "$jamfHelper" \
  -windowType utility \
  -description "$messageToDisplay" \
  -button1 "OK"

fi