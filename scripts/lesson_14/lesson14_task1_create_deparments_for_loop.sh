#!/bin/bash

jss_instance="https://m300-10a.pro.jamf.training"
art_departments_file=/Users/chris.orellana/Code/jamf-300-training/scripts/lesson_14/art_deparments.txt

while read department in departments
do
    curl -su "$username:$password" "$jss_instance/JSSResource/departments/id/0" -H "content-type: text/xml" -X POST -d "<department><name>$department</name></department>"
done < $art_departments_file
