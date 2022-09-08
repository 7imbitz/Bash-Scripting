#!/bin/bash

# Printing Hello World!
echo "Hello World\!"

# Redirecting output into the file
# ">> -> redirect" | "> -> overwrite"
echo "Hello World\!" >> hello.txt

# xargs -> passing the output to another bash command
cat domain.txt | xargs -I % bash -c "nslookup % 8.8.8.8"
