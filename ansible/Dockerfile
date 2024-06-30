FROM ubuntu:latest

# Set environment variable to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common curl git zsh && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Default command to run when container starts
CMD [ "ansible", "--version" ]

