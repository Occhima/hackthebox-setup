# Hack The Box Setup

Welcome to the Hack The Box setup guide! This repository contains a Docker setup to create a custom Kali Linux environment tailored for penetration testing and red teaming activities. This environment is specifically designed for HTB write-ups and other related tasks.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Included Tools](#included-tools)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project provides a Dockerized Kali Linux environment configured with essential tools for penetration testing. The environment includes tools for enumeration, exploitation, and post-exploitation, making it ideal for HTB write-ups and similar activities.

## Features

- Pre-configured Kali Linux environment
- Includes essential penetration testing tools
- Dockerized for easy setup and teardown
- Custom scripts and aliases for convenience

## Requirements

- Docker
- Docker Compose

## Setup Instructions

1. **Clone the repository:**

   ```sh
   git clone https://github.com/Occhima/hackthebox-setup.git
   cd hackthebox-setup
   ```

2. **Build and start the Docker container:**

   ```sh
   docker-compose up --build -d
   ```

3. **Access the running container:**

   ```sh
   docker exec -it kali-container /bin/bash
   ```

## Usage

### Running `pwncat-cs`

The environment includes a virtual environment for `pwncat-cs`. To use it, run the following alias:

```sh
runpwncat
```

### Starting an HTTP Server

To serve files via HTTP from the `/home/htb` directory in the container, navigate to the directory and run:

```sh
cd /home/htb
python3 -m http.server 80
```

### Creating a Reverse Shell

Use tools like `netcat` or any other available in the Kali Linux container. For example:

```sh
nc -lvnp 4444
```

## Included Tools

- **pdtm**: ProjectDiscovery Tools Manager
- **Searchsploit**: Exploit Database
- **Seclists**: Security test data
- **Dirsearch**: Web path scanner
- **Gobuster**: Directory/File & DNS busting tool
- **pwncat-cs**: Post-exploitation tool

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue to improve this project.

## TODO
- [ ] Use python-pipx to install python apps in isolated envs

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
