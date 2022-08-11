#!/bin/bash

launch_daemon=/Library/LaunchDaemons/com.jamf.daemon.script.plist
launchctl bootstrap system $launch_daemon