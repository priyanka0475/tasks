#!/bin/bash

# Function to display usage instructions
display_usage() {
    echo "Usage: $0 <site_name>"
}

# Check if a site name is provided as an argument
if [ $# -ne 1 ]; then
    display_usage
    exit 1
fi

# Provide the site name
SITE_NAME=$1

# Downloading and extracting the latest WordPress version
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Move WordPress files to the desired location
mv wordpress "$SITE_NAME"
cd "$SITE_NAME"

# Create a new database for the WordPress site
DB_NAME="${SITE_NAME}_db"
DB_USER="${SITE_NAME}_user"
DB_PASSWORD=$(openssl rand -base64 12)

mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Configure the WordPress site
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/$DB_NAME/" wp-config.php
sed -i "s/username_here/$DB_USER/" wp-config.php
sed -i "s/password_here/$DB_PASSWORD/" wp-config.php

# Display instructions for completing the installation
echo "WordPress site '$SITE_NAME' created successfully!"
echo "Database Name: $DB_NAME"
echo "Database User: $DB_USER"
echo "Database Password: $DB_PASSWORD"
echo "Please finish the installation by accessing the site URL in your browser."