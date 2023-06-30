# Example.com Site Management Script

This Bash script allows you to manage the example.com site from the command line.


## Installation

1. Download the script file (e.g., `site_management.sh`) to your desired location.
2. Open a terminal and navigate to the directory where the script is located.
3. change the permission of the file by below command
   chmod 777 site_management.sh

3. Make the script executable by running the following command:

To open example.com in a browser, run the following command:
./site_management.sh open

To enable or disable the site (i.e., start or stop the containers), use the following command:
./site_management.sh toggle <action>

Replace <action> with either "enable" or "disable" to specify the desired action. For example:
./site_management.sh toggle enable   # Enable the site
./site_management.sh toggle disable  # Disable the site

To delete the site (i.e., stop the containers and delete local files), run the following command:
./site_management.sh delete

Note: Make sure to exercise caution when using the "delete" command, as it permanently removes the site and its associated files.