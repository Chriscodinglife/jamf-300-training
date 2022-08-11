#!/bin/bash

# script used as a preinstall script with Jamf Daemon Package in Composer
# If statement to find a launch daemoon and boot it out of memory if found. This will also remove the launch daemon

launch_daemon=/Library/LaunchDaemons/com.jamf.daemon.script.plist
if [[ -e $launch_daemon ]]
then   
    launchctl bootout system $launch_daemon
    rm $launch_daemon
fi