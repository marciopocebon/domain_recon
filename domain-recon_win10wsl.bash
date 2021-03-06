#!/bin/bash
# Bash script for reconnaissance on domains
# Created by Mattia Campagnano on Tue May 24 14:44:07 EDT 2018
# This is a modified version of the original script, intended for use with the Windows Subsystem for Linux under Windows 10

echo "DOMAIN RECON"
echo "By Mattia Campagnano"
echo "-------------------"
echo "Please enter a domain: "
read domain

# Checks user input and throws an error if no domain was entered.

if [ -z $domain ]; then
  echo -n "Please enter a domain "
  exit 1

# Otherwise executes the recon script and opens the website list found below

else
   echo "recon on $domain";
fi

read -p "Press <ENTER > to continue"

#Retrieves all IP addresses associated to the given domain

IPs=$(dig $domain | grep "$domain\." | awk '{print $5}')
echo "We found the following IP addresses $IPs associated to the $domain domain"
echo
echo
echo
echo

# Optional: save associated IP addresses to an output file 

#echo "Please enter a filepath for the output file: "
#read output
#echo $IPs > $output

# Check the domain entered by the user, prepopulating a list of specific websites and automatically loading multiple Google Chrome tabs


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab  http://intodns.com/$domain &


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://www.virustotal.com/#/domain/$domain &


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab http://viewdns.info/dnsreport/?domain=$domain &


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://www.whatsmydns.net/#A/$domain


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://safeweb.norton.com/report/show?url=$domain


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab http://www.reputationauthority.org/domain_lookup.php?ip=$domain&ipvalid=&Submit.x=20&Submit.y=16&Submit=Search &



/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://otx.alienvault.com/browse/pulses?q=$domain &



/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://sitecheck.sucuri.net/results/$domain &


/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://www.threatminer.org/domain.php?q=$domain &



/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe -new-tab https://hashdd.com/i/$domain &

