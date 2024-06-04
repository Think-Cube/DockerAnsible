FROM ubuntu:mantic-20240427

ARG ANSIBLE_CORE_VERSION
ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT
ENV ANSIBLE_CORE_VERSION ${ANSIBLE_CORE_VERSION}
ENV ANSIBLE_VERSION ${ANSIBLE_VERSION}
ENV ANSIBLE_LINT ${ANSIBLE_LINT}

LABEL maintainer="contact@thinkcube.dev"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y gnupg2 python3-pip sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN python3 -m pip install --upgrade pip cffi && \
    pip3 install ansible-core==${ANSIBLE_CORE_VERSION} && \
    pip3 install ansible==${ANSIBLE_VERSION} ansible-lint==${ANSIBLE_LINT} && \
    pip3 install mitogen jmespath && \
    pip install --upgrade pywinrm && \
    rm -rf /root/.cache/pip

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
