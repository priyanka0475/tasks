# Hosts Entry Creation Script

This Bash script adds an entry to the `/etc/hosts` file for `example.com` pointing to `localhost`.


## Installation

1. Clone this repository or download the `add-etc_hosts_entry.sh` script.

2. Open a terminal and navigate to the directory containing the script.

3. Make the script executable using the following command:
   
    chmod 777 add_hosts_entry.sh
    

## Usage

To run the script, use the following command:

sudo ./add_hosts_entry.sh

NOTE:
1. This script requires root privileges to modify the /etc/hosts file. Ensure you run it with sudo or as the root user.

2. The script checks if the entry already exists in the /etc/hosts file. If it does, the script will exit without making any changes.

3. The script assumes that the /etc/hosts file exists in the correct location. If it does not, the script will abort.

4. Take caution when modifying the /etc/hosts file as it can affect network connectivity. Make sure you have a backup of the original file.