#!/bin/bash
#Script name: ds_ssl_is_valid.sh
#Author: Daniel Souza | github.com/danielsouzasp
#Date 26th feb 2021
#Description: Read an URL, check if its SSL is valid 

#Checking if first parameter exists
if [[ ! $1 ]]; then
  echo "Please inform the URL to check"
  exit
fi

URL=$1
VALUE=0

#Getting the URL's SSL return code withtou spaces (example of return: "   Verify return code: 0 (ok)")
RETURN_CODE="$(echo | openssl s_client -showcerts -connect $URL:443 2>/dev/null | grep Verify | sed  s'/ //g')"

if [ "$RETURN_CODE" = "Verifyreturncode:0(ok)" ] ; then
    VALUE=1
    echo $VALUE
    exit
fi

#Return 0 when fail
echo $VALUE
exit

