#!/bin/bash

jamf_instance="https://m300-10a.pro.jamf.training"

curl -su "$username:$password" "$jamf_instance/JSSResource/mobiledevicecommands/command/UpdateInventory/id/101" -X POST