# Use an official Python runtime as a parent image
FROM --platform=linux/amd64 python:3.9-slim

# Set the working directory in the container
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY app/* /usr/src/app

# Run main.py when the container launches
CMD ["python3", "main.py"]