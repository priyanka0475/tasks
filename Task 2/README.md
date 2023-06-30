# WordPress Site Creation Script and user to provide the site name as a command-line argument

The create_wordpress-site.sh Bash script allows you to create a WordPress site using the latest WordPress version. The script takes the site name as a command-line argument.


## Installation

1. Clone the repository from github to your local machine or cloud VM where you want wordpress to be downloaded ,run the `create_wordpress-site.sh` script to your local machine or vm.

2. Open a terminal and navigate to the directory where you saved the `create_wordpress-site.sh` script.

3. Make sure you have a MySQL server installed and running before running this script.

Note: This script assumes that you have appropriate permissions to create databases and users on your MySQL server.

4. Download the script:
   
   wget https://provide site name.com/create_wordpress-site.sh

5. chmod 777 create_wordpress-site.sh

6. Run the script with the desired site name as a command-line argument and replace site name with the name you want to give your WordPress site

   ./create_wordpress-site.sh <site_name>