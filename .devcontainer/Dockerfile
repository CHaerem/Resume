# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# Install basic utilities and TeX Live full
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texlive-full \
    make \
    git \
    curl \
    ca-certificates \
    sudo \
    openssh-client \
    gnupg2 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create the user
RUN useradd -m vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode && \
    chmod 0440 /etc/sudoers.d/vscode

# Set up SSH directory structure
RUN mkdir -p /home/vscode/.ssh && \
    chown -R vscode:vscode /home/vscode/.ssh && \
    chmod 700 /home/vscode/.ssh

# Set the default user
USER vscode
WORKDIR /workspaces/Resume

# Configure Git to use SSH properly
RUN git config --global core.sshCommand "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
RUN git config --global core.sshCommand "ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
