# Pull base image.
FROM python

# Install Ansible.
RUN pip install ansible

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
