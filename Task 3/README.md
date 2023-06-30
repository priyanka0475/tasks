# LEMP Stack Setup Script

This script sets up a LEMP stack (Linux, Nginx, MySQL, PHP) using Docker containers. It creates a Docker Compose file and starts the containers.


## Installation

1. Make sure you have Docker installed on your system.

2. Clone the repository:
   git clone <repository name>

3. Change into the project directory
   cd lemp-stack

4. Run the setup script:
   ./setup-lemp.sh


## Usage

The following commands are available:

- `docker-compose up -d`: Starts the LEMP stack containers in the background.
- `docker-compose down`: Stops and removes the containers.


## Accessing the LEMP Stack

Once the setup is complete and the containers are running, you can access the LEMP stack in your browser:

- URL: http://localhost


## Customization

- Nginx configuration: You can modify the `nginx/default.conf` file to customize Nginx settings.

- PHP configuration: Modify the `php.ini` file inside the `php` service image to adjust PHP settings.

- MySQL configuration: Modify the environment variables and volume mappings for the `mysql` service in the Docker Compose file (`docker-compose.yml