#!/bin/bash

# Printing Hello World!
echo "Hello World\!"

# Redirecting output into the file
# ">> -> redirect" | "> -> overwrite"
echo "Hello World\!" >> hello.txt

# xargs -> passing the output to another bash command
cat domain.txt | xargs -I % bash -c "nslookup % 8.8.8.8"

# for loop for 5 dataset, echoing output based on index, jq-ing from json file
for i in {1..5};do echo "data $i"; jq -r '.data['$i'].url, .data['$i'].username, .data['$i'].password' file.json;echo ""; done
