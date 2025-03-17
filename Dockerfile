FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Copy calculator.py and the test file to the /app directory
COPY cal.py /app/cal.py
COPY test.py /app/test.py


# CMD printf "1\n4\n3\n" | python3 calculator_main.py
CMD ["python3",  "/app/cal.py"]





