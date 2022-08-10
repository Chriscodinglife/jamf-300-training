#!/bin/bash

boot_time=$(sysctl kern.boottime | awk '{print $5}' | tr -d ',')

# echo $boot_time

# Get the last time the comptuer was started up based on the kernel in a formatted way
boot_time_formatted=$(date -jf %s $boot_time +%F\ %T)

# Echo for extension attribute
echo "<result>$boot_time_formatted</result>"