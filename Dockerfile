FROM debian:11

RUN apt-get update \
    && apt-get install --no-install-recommends -y python-pip \
    && rm -rf /var/lib/apt/lists/*
RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

WORKDIR /work
