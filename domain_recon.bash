#!/bin/bash
#Bash script for reconnaissance on domains
#Created by Mattia Campagnano on Sat Feb  6 00:27:30 EST 2016
echo "DOMAIN RECON"
echo "By Mattia Campagnano"
ECHO "-------------------"
echo -n "Please enter a domain: "
read domain

#Checks user input and throws an error if no domain was entered.

if [ -z $domain ]; then
  echo -n "Please enter a domain "
  exit 1

#Otherwise executes the recon scripts and opens the website list below

else
   echo -n "recon on $domain";
fi

read -p "Press <ENTER > to continue"

#Steps needed to open Chrome in a new tab from Terminal in OS X /macOS
#cd into the Google Chrome folder

cd /Applications/Google\ Chrome.app/

#cd into the hidden folder containing the actual executable for Mac

cd Contents/MacOS/

#Open Google Chrome in a new tab 
#The browser will open a series oif new tab, prepopulated with the 
#domain entered by the user.

./Google\ Chrome -new-tab  http://intodns.com/$domain &
./Google\ Chrome -new-tab https://www.virustotal.com/#/domain/$domain &
./Google\ Chrome -new-tab http://viewdns.info/dnsreport/?domain=$domain &
./Google\ Chrome -new-tab https://www.whatsmydns.net/#A/$domain
./Google\ Chrome -new-tab https://safeweb.norton.com/report/show?url=$domain
./Google\ Chrome -new-tab http://www.reputationauthority.org/domain_lookup.php?ip=$domain&ipvalid=&Submit.x=20&Submit.y=16&Submit=Search &

./Google\ Chrome -new-tab https://otx.alienvault.com/browse/pulses?q=$domain &

./Google\ Chrome -new-tab https://sitecheck.sucuri.net/results/www.reputationauthority.org &
./Google\ Chrome -new-tab https://www.threatminer.org/domain.php?q=$domain &

./Google\ Chrome -new-tab https://hashdd.com/i/$domain &

