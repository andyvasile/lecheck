#!/bin/bash
### Check if a domain is ready to get Let's Encrypt installed or not ###

#COLORS
DARK_RED='\033[1;31m'
GREEN='\033[0;32m'
DARK_BLUE='\033[1;34m'
RED='\033[0;31m'
NC='\033[0m' 
code='200 OK'

if [[ $# -eq 0 ]]; then
	echo
	echo "Let's Encrypt pre-installation Checker v0.1"
	echo
    echo "USAGE: lecheck <domain.tld> - ${DARK_RED}IMPORTANT${NC}: do not add http or www."
    echo
    exit 0
fi

if [[ $# -eq 2 ]] ; then
    	echo "Sacrebleu! once at a time!"
    	exit 0
fi

if [[ $# -eq 1 ]]; then
    #curl -I -s http://$1 | grep HTTP; curl -I -s http://www.$1 | grep HTTP
    nw=$(curl -I -s http://$1 | grep HTTP); ww=$(curl -I -s http://www.$1 | grep HTTP)
    

    if [[ $nw == *"200"* ]]; then
    echo "${GREEN}http:// ->${NC} magnific! ${NC}"
    else
    echo "${DARK_RED}Sacrebleu!!${NC}" 
    echo "http:// ->>> $(curl -I -s http://$1 | grep -i location)"
    echo
    fi

    if [[ $ww == *"200"* ]]; then
    echo "${GREEN}http://www ->${NC} Oui !! ${NC}"
	else
    echo "${DARK_RED}Sacrebleu!!${NC}" 
    echo "http://www ->>> $(curl -I -s http://www.$1 | grep -i location)"
    echo
    fi

    exit 0
fi
