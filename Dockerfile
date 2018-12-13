# Pull base image.
FROM spy86/python

# Install Ansible.
RUN pip install ansible

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]