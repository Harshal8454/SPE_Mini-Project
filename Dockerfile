FROM ubuntu:latest

# Update package list and install Python
RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Create the /app directory and set it as the working directory
WORKDIR /app

# Copy the Python files into /app
COPY cal.py test.py .  # Correct way to copy

# Ensure CMD runs from /app
CMD ["python3", "/app/cal.py"]


