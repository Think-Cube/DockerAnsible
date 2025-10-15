FROM ubuntu:25.04

ARG ANSIBLE_CORE_VERSION
ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT

ENV ANSIBLE_CORE_VERSION=${ANSIBLE_CORE_VERSION} \
    ANSIBLE_VERSION=${ANSIBLE_VERSION} \
    ANSIBLE_LINT=${ANSIBLE_LINT}

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        python3-venv python3-pip gnupg2 sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/ansible-env && \
    /opt/ansible-env/bin/pip install --upgrade pip cffi && \
    /opt/ansible-env/bin/pip install \
        "ansible-core==${ANSIBLE_CORE_VERSION}" \
        "ansible==${ANSIBLE_VERSION}" \
        "ansible-lint==${ANSIBLE_LINT}" \
        mitogen jmespath pywinrm && \
    rm -rf /root/.cache/pip

ENV PATH="/opt/ansible-env/bin:$PATH"

RUN mkdir /ansible && mkdir -p /etc/ansible && echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible
CMD ["ansible-playbook", "--version"]
