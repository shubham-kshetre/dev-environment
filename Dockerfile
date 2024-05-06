# Use Debian Bookworm Slim as the base image
FROM debian:bookworm-slim

# Install required packages
RUN apt-get update && \
    apt-get install -y \
        ansible \
        git \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /ansible
COPY . .
# Copy ansible configuration files if needed
# COPY ansible.cfg /etc/ansible/ansible.cfg

# Run any additional setup commands if needed
# RUN ansible-galaxy install <collection>.<role>

# Default command to run ansible-pull
CMD ["ansible", "--version"]

