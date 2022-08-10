#!/bin/bash

jamf_policy_log="/Users/Shared/jamf_policy_log.txt"

read -p "What is the id number of the policy that you want to run? " policy_id

jamf_policy_output=$(sudo jamf policy -id $policy_id -verbose)

echo $jamf_policy_output >> $jamf_policy_log