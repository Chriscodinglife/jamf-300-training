#!/bin/bash
messageToDisplay="$4"
policyID="$5"
policyAction="$6" 

jamfHelper="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper" 
buttonClicked=$( "$jamfHelper" -windowType utility -description "$messageToDisplay" -button1 "OK" -button2 "Cancel" ) 

if [[ "$buttonClicked" = "0" ]];then
	su "$3" -c "open 'jamfselfservice://content?entity=policy&id=$policyID&action=$policyAction'"
fi