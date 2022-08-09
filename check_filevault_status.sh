#!/bin/bash

# Check the filevault status
fv_status=$(fdesetup status | awk '/FileVault is On/{print $NF}' | tr -d .)

#echo $fv_status

if [[ "$fv_status" == "On" ]]; then
    echo "FileVault is enabled"
    jamf recon
else
    jamf displayMessage -message "To comply with our Tech Agreement, please encrypt your Mac in Self Service"
    open /Applications/Self\ Service.app/
fi