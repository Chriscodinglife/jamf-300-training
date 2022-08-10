#!/bin/bash

# display dialog "What is your office line?" default answer "###-#### buttons {"OK"} default button 1

# osascript indicates we are indesting data from an applescript in this case 
# we are using a here document to pass in the data
# we are capturing the text by using the phrase: text returned of
# When using a heredoc as a command substitution, make sure the ending parenthesis is on a new line
asset_tag=$(osascript << APPLESCRIPT
tell application "System Events" to text returned of (display dialog "Please type in your asset tag" default answer "#######" buttons {"OK"} default button 1)
APPLESCRIPT
)

# Jamf recon can actually pass in specific values, such as building or phone
jamf recon -assetTag $asset_tag