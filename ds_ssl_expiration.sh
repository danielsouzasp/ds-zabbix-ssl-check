#!/bin/bash
#Script name: ds_ssl_expiration.sh
#Author: Daniel Souza | github.com/danielsouzasp
#Date 26th feb 2021
#Description: Read an URL, check its SSL and return how many days to expire 

#Checking if first parameter exists
if [[ ! $1 ]]; then
  echo "Please inform the URL to check"
  exit
fi

URL=$1
DAYS_TO_EXPIRE_IN_SEC=0
VALUE=0

#Getting the current date in seconds
CURRENT_DATE_IN_SEC="$(date +%s)"

#Getting the URL's SSL cert expiration date 
EXP_DATE="$(echo | openssl s_client -connect $URL:443 2>/dev/null | openssl x509 -noout -enddate | sed 's/notAfter=//' | sed 's/GMT//')"
#Converting to seconds before using it
EXP_DATE_IN_SEC="$(date -d "$EXP_DATE" +%s)"

DAYS_TO_EXPIRE_IN_SEC="$(($EXP_DATE_IN_SEC - $CURRENT_DATE_IN_SEC))"

if [ $EXP_DATE_IN_SEC -gt $CURRENT_DATE_IN_SEC ] ; then
    VALUE="$(($DAYS_TO_EXPIRE_IN_SEC / 86400))"
    echo $VALUE
    exit
fi

#Return 0 when expired
echo $VALUE
exit

