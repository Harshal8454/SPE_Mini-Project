FROM ubuntu:latest

# Set environment variable to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update \
    && apt-get install -y python3 python3-pip apt-utils debconf dialog \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy application files
COPY cal.py test.py /app/

# Set default command
CMD ["python3", "/app/cal.py"]
