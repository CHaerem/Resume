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
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create the user
RUN useradd -m vscode && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode && \
    chmod 0440 /etc/sudoers.d/vscode

# Set the default user
USER vscode
WORKDIR /workspaces/Resume
