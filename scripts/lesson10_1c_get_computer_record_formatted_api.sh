#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
my_computer_record_file=~/Desktop/my_computer_record.xml

my_computer_record=$(curl -X GET -su "$username:$password" "$jss_instance/JSSResource/computers/id/100" -H "accept: application/xml" | xmllint --format -)

echo $my_computer_record > $my_computer_record_file