#!/bin/bash

# Script to add an entry to /etc/hosts for example.com pointing to localhost

HOSTS_FILE="/etc/hosts"
SITE_NAME="example.com"
IP_ADDRESS="127.0.0.1"

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo or run as root."
    exit 1
fi

# Check if the /etc/hosts file exists
if [ ! -f "$HOSTS_FILE" ]; then
    echo "The /etc/hosts file does not exist. Aborting."
    exit 1
fi

# Check if the entry already exists
if grep -q "$SITE_NAME" "$HOSTS_FILE"; then
    echo "The entry for $SITE_NAME already exists in $HOSTS_FILE."
    exit 0
fi

# Add the entry to /etc/hosts
echo "$IP_ADDRESS    $SITE_NAME" >> "$HOSTS_FILE"
echo "The entry for $SITE_NAME has been added to $HOSTS_FILE."

exit 0
