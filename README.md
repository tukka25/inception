# Project Inception

This project aims to provide a seamless setup for a web development environment using Docker containers. It includes configurations for running WordPress, MariaDB, and Nginx, allowing you to quickly set up a fully functional web stack.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine.

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/inception.git
   cd inception


2. ### Create a .env file with your configurations:

```bash
cp .env.example .env
Edit the .env file with your desired settings.

3.  Create a .env file with your configurations:***

bash
Copy code
docker-compose up -d
This will start the WordPress, MariaDB, and Nginx containers in the background.

Access WordPress in your browser:

Open http://localhost in your preferred web browser.

Complete the WordPress installation process using the database credentials specified in your .env file.

Configuration
The project is configured using the .env file. Customize the variables in this file to suit your needs.

Stopping the Containers
3. ### To stop the running containers, use the following command: ***

bash
Copy code
docker-compose down
Contributing
Feel free to contribute to this project. Fork the repository, make your changes, and submit a pull request.

## License
This project is licensed under the MIT License.

