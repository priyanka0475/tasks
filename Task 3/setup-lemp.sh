#!/bin/bash

# Stop and remove any existing containers
docker-compose down

# Create nginx configuration file
cat <<EOF > nginx/default.conf
server {
    listen 80;
    server_name localhost;
    root /var/www/html;

    location / {
        index index.php index.html;
        try_files \$uri \$uri/ =404;
    }

    location ~ \.php$ {
        fastcgi_pass php:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
        include fastcgi_params;
    }
}
EOF

# Create docker-compose.yml file
cat <<EOF > docker-compose.yml
version: '3'

services:
  nginx:
    image: nginx:latest
    volumes:
      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf
      - ./html:/var/www/html
    ports:
      - 80:80
    depends_on:
      - php

  php:
    image: php:latest
    volumes:
      - ./html:/var/www/html

  mysql:
    image: mysql:latest
    environment:
      MYSQL_ROOT_PASSWORD: root
    volumes:
      - ./mysql:/var/lib/mysql
EOF

# Create HTML file
echo "<h1>Welcome to LEMP stack!</h1>" > html/index.html

# Build and start the containers
docker-compose up -d

echo "LEMP stack setup completed successfully."
