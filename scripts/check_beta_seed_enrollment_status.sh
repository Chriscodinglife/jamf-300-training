#!/bin/bash

# Using the seedutil command to determine the beta program enrollment status
# Use awk to find the line with the word enrolled in it (case sensitive)
# print $NF will show me the last column value in that line

# CustomerSeed
# DeveloperSeed
# PublicSeed
# (null)
appleDevSeed=$(/System/Library/PrivateFrameworks/Seeding.framework/Resources/seedutil current | awk '/enrolled/{print $NF}')

echo "<result>$appleDevSeed</result>"