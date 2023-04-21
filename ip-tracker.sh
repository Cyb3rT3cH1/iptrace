#!/bin/bash
##   IP-Tracer 	: 	Automated IP-TRACING  Tool
##   Author 	: 	AMAN GUPTA 
##   Version 	: 	1.0
##   Github 	: 	https://github.com/Cyb3rT3cH1

#!/bin/bash


echo -e "\e[38;5;196m  ____      _    _____     _____ _____      _   _ \e[0m"
echo -e "\e[38;5;202m / ___|   _| |__|___ / _ _|_   _|___ /  ___| | | |\e[0m"
echo -e "\e[38;5;208m| |  | | | | '_ \ |_ \| '__|| |   |_ \ / __| |_| |\e[0m"
echo -e "\e[38;5;214m| |__| |_| | |_) |__) | |   | |  ___) | (__|  _  |\e[0m"
echo -e "\e[38;5;220m \____\__, |_.__/____/|_|   |_| |____/ \___|_| |_|\e[0m"
echo -e "\e[38;5;220m        |___/            Version :1.0\e[0m"                                      
 echo
 echo
 
echo -e "\e[38;5;220m              Tool Created by Aman Gupta\e[0m"
echo
echo

echo "IP-Tracer : 	Automated IP-TRACING  Tool"
echo "Author 	: 	AMAN GUPTA" 
echo "Version :       1.0"
echo "Github 	: 	https://github.com/Cyb3rT3cH1"

#############################################################################
echo
echo

read -p "Enter IP address: " REMOTE_ADDR
echo $REMOTE_ADDR

#echo "Your IP address: $IP"
# Get the IP address
#$REMOTE_ADDR=$(curl -s https://ipinfo.io/)


# Get the geolocation data
DATA=$(curl -s https://ipinfo.io/$REMOTE_ADDR/json)
echo
#public or Private
if [[ $REMOTE_ADDR =~ ^10\.|^172\.(1[6-9]|2[0-9]|3[0-1])\.|^192\.168\.|^::1$|^fd[0-9a-f]{2}: ]]; then
  echo "Type of IP : Private IP address"
else
  echo "Type of IP : Public IP address"
fi
echo
echo

#Ip version info

if [[ $REMOTE_ADDR =~ : ]]; then
  echo "Ip version : IPv6 address"
else
  echo "Ip version : IPv4 address"
fi
# Parse the data using 'jq' command-line tool
echo

RANGE=$(echo "$DATA" | jq -r '.range')
echo "Range: $RANGE"
echo
REVERSE_DNS=$(echo "$DATA" | jq -r '.hostname')
echo "Reverse DNS: $REVERSE_DNS"
echo
HOST=$(echo "$DATA" | jq -r '.org')
echo "Host Address: $HOST"
echo
NAMESERVER=$(echo "$DATA" | jq -r '.org')
echo "Nameservers: $NAMESERVER"
echo
#REMOTE_PORT=$(echo "$DATA" | jq -r '.port')
#echo "Remote Port: $REMOTE_PORT"
#echo
#PROXY=$(echo "$DATA" | jq -r '.headers.Proxy-Checker')
#echo "Proxy Checker Header: $PROXY"
#echo
#REFERER=$(echo "$DATA" | jq -r '.headers.Referer')
#echo "Browser Referer: $REFERER"
#echo
SYSTEM=$(echo "$DATA" | jq -r '.org')
echo "Computer System: $SYSTEM"
echo
BROWSER=$(echo "$DATA" | jq -r '.org')
echo "Browser Type: $BROWSER"
echo
LANGUAGE=$(echo "$DATA" | jq -r '.org')
echo "Browser Language: $LANGUAGE"
echo
CONTINENT=$(echo "$DATA" | jq -r '.region')
echo "Continent: $CONTINENT"
echo
COUNTRY=$(echo "$DATA" | jq -r '.country')
echo "Country: $COUNTRY"
echo
CAPITAL=$(echo "$DATA" | jq -r '.city')
echo "Capital: $CAPITAL"
echo
STATE=$(echo "$DATA" | jq -r '.region')
echo "State: $STATE"
echo
CITY=$(echo "$DATA" | jq -r '.city')
echo "City: $CITY"
echo
POSTAL=$(echo "$DATA" | jq -r '.postal')
echo "Postal: $POSTAL"
echo
ISP=$(echo "$DATA" | jq -r '.org')
echo "ISP: $ISP"
echo
ORG=$(echo "$DATA" | jq -r '.org')
echo "Organization: $ORG"
echo
AS=$(echo "$DATA" | jq -r '.org')
echo "AS Number: $AS"
echo
SPEED=$(echo "$DATA" | jq -r '.org')
echo "Speed Connection: $SPEED"
echo
TIMEZONE=$(echo "$DATA" | jq -r '.timezone')
echo "Time Zone: $TIMEZONE"
echo
LOCAL_TIME=$(echo "$DATA" | jq -r '.datetime')
echo "Local Time: $LOCAL_TIME"
echo
OFFSET=$(echo "$DATA" | jq -r '.utc_offset')
echo "Timezone GMT offset: $OFFSET"
echo
SUNRISE=$(echo "$DATA" | jq -r '.sunrise')
echo "Sunrise: $SUNRISE"
echo
EMAIL=$(echo "$DATA" | jq -r '.hostname')
echo "Email is: $EMAIL"




