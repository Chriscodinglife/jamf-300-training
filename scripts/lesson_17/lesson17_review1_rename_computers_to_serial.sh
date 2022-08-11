#!/bin/sh

# Script to be used as a postinstall script
serialNumber="$(system_profiler SPHardwareDataType | awk '/Serial Number/{print $4}')"


sudo /usr/sbin/scutil --set ComputerName "$serialNumber"
sudo /usr/sbin/scutil --set LocalHostName "$serialNumber"
sudo /usr/sbin/scutil --set HostName "$serialNumber"

exit 0