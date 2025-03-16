FROM ubuntu:latest

# Set non-interactive mode to prevent prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Create and switch to the app directory
WORKDIR /app

# Copy application files
COPY cal.py test.py .  # Copies files into /app/

# Set default command
CMD ["python3", "./cal.py"]  # Uses relative path instead of absolute



