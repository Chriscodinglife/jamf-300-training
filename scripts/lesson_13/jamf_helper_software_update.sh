#!/bin/bash

answer=$(/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper \
-windowType utility \
-title "Software Update" \
-description "You have software update available. Please install them ASAP. Thank you." \
-button1 "Let's go" \
-button2 "No thanks" \
-defaultButton 1)

if [[ $answer -eq 0 ]]
then   
    softwareupdate -l
else
    echo "Nothing to see here"
fi
