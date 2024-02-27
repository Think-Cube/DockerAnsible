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

1. Update package lists and install required dependencies.
2. Install and configure Python, Pip, and other necessary tools.
3. Install specified versions of Ansible, Ansible Core, and Ansible Lint.
4. Set up the working directory and essential Ansible files.

## Environment Variables

* `ANSIBLE_CORE_VERSION`: Version of Ansible Core.
* `ANSIBLE_VERSION`: Version of Ansible.
* `ANSIBLE_LINT`: Version of Ansible Lint.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
