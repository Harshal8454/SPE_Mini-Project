FROM ubuntu:latest

# Set non-interactive mode to prevent prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy application files
COPY cal.py test.py .  # Correctly copies files into /app/

# Set default command using full absolute path
CMD ["python3", "/app/cal.py"]




