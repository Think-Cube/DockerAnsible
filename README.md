# DockerAnsible

This repository houses a Dockerfile for creating a Docker image tailored for Ansible automation. It sets up the necessary dependencies and tools, making it convenient for users to execute Ansible playbooks within a controlled environment.

## Getting Started

### Prerequisites

- Docker installed on your machine

### Build and Run

1. Clone the repository:

   ```bash
   git clone https://github.com/Think-Cube/DockerAnsible.git
   ```
2. Build the Docker image:
   ```bash
   docker build -t dockeransible .
   ```
3. Run the Docker container:
   ```bash
   docker run -it --rm dockeransible
   ```
## Dockerfile

The Dockerfile follows these major steps:

1. Update package lists and install Python 3 and Pip.
2. Upgrade Pip and install Ansible.
3. Install `sshpass` for SSH password support.
4. Set the working directory to `/work`.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
