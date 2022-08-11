#!/bin/bash

# Get version of OS
macOSVersion=$( sw_vers -productVersion )

# Create Directory and plist
mkdir -p /Library/Application\ Support/AnyOrg
defaults write /Library/Application\ Support/AnyOrg/AnyOrg.plist macOSVersion -string $macOSVersion
chmod 644 /Library/Application\ Support/AnyOrg/AnyOrg.plist