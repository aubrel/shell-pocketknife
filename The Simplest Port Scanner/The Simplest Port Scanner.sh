#!/bin/bash - 
# Just a simple port-scanning script!

readonly PROGRAM=$(basename "$0")

function usage () {
    echo
    echo "How to Use:"
    echo
    echo "  $PROGRAM [starting_ip_octet [ending_ip_octet [port_number]]]"
    echo
    echo "$PROGRAM takes at most three arguments: a starting IP octet, an ending IP octet, and the port range you want to scan."
    echo
}


usage

for ip in $(seq ${1:-1} ${2:-254}); do nc -w 1 -vz 192.168.1.$ip ${3:-80}; done
