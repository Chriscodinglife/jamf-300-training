#!/bin/bash

messageToDisplay="You have updates available. Do you want to install them?"

# Prompt user to update

jamfHelper="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper" 
buttonClicked=$( "$jamfHelper" -windowType utility -description "$messageToDisplay" -button1 "OK" -button2 "Cancel" ) 

if [[ "$buttonClicked" = "0" ]];then
	$jamfHelper -windowtype utility -description "Installing updates..." -button1 "OK"
fi