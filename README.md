# Inception

The project involves setting up a small infrastructure composed of different services within a virtual machine using Docker Compose. Each Docker image must correspond to its respective service, and services must run in dedicated containers. Dockerfiles must be written for each service and called in `docker-compose.yml` via the `Makefile`. The following tasks are mandatory:

- Setting up NGINX with TLSv1.2 or TLSv1.3.
- Installing and configuring WordPress + php-fpm.
- Installing MariaDB.
- Setting up volumes for the WordPress database and files.
- Establishing a docker-network.
- Ensuring containers restart in case of a crash.
- Implementing specific security measures and configuration requirements.

## Requirements

- linux environment is prefered
- Docker
- Docker Compose

## How to Run

1. Clone the project repository.
2. Navigate to the project directory.
3. Run `make` to set up the application.
4. Access the application via the configured domain name.
