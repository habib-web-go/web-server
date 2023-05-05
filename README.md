# Web Server Setup

## Prerequisites

Before you begin, please ensure that you have the following installed on your system:

- Docker
- Git

## Installation Instructions

1. Clone this repository to your local machine using the following command:

```shell
git clone https://github.com/habib-web-go/web-server.git
```


2. Create a copy of the `.env.example` file and name it `.env`. You can change any default values in the `.env` file to suit your needs.

3. Generate SSL certificates and private key by running the following command from the root directory of the project:

```shell
sh ./scripts/generate-ssl.sh
```


4. Start the nginx server using Docker Compose by running the following command from the root directory of the project:

```shell
docker-compose up -d
```