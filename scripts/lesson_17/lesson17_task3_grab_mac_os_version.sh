#!/bin/bash

macOSVersion=$( sw_vers -productVersion )

if [[ ! -f /Library/Application\ Support/AnyOrg/AnyOrg.plist ]]
then
	/usr/local/jamf/bin/jamf policy -event updateAnyOrgPlist -randomDelaySeconds 5
fi

plist_macOSVersion=$( defaults read /Library/Application\ Support/AnyOrg/AnyOrg.plist macOSVersion )

if [[ $plist_macOSVersion != $macOSVersion ]]
then 
	/usr/local/jamf/bin/jamf recon -randomDelaySeconds 5
 	if [[ $? = 0 ]] 
 	then 
 		/usr/local/jamf/bin/jamf policy -event updateAnyOrgPlist 
	fi
fi