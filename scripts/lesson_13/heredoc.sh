#!/bin/bash

my_name="Chris"
text_file=~/Desktop/hello_world.txt

# echo "Hello World" > $text_file
# echo "My name is $my_name >> $text_file"

# Create a heredoc that can multiple lines to a file
# EOF can literally be any word you want
# As long as the ending word is the same as the initial word for the heredoc
cat << HEREDOC > $text_file

Hello World
My name is $my_name
It is nice to meet you

HEREDOC

update_devices_txt_file=~/Desktop/update_devices.csv

cat << EOF > $update_devices_txt_file
ahgjawo,asdadsad
alsjdahsdad,asdsadad
jkalsda,asdasda
adaasadsdasdads,asdasada
EOF

