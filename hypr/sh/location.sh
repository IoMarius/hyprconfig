#!/bin/bash

location_data=$(curl -s "https://ipinfo.io?token=58f97945142675")
city=$(echo "$location_data" | grep -oP '"city": "\K[^"]+')
country=$(echo "$location_data" | grep -oP '"country": "\K[^"]+')

echo "$country, $city"
#echo "debug: $location_data"

