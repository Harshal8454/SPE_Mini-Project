FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

COPY cal.py /app/cal.py
COPY test.py /app/test.py

CMD ["python3", "cal.py"]