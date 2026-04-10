# Use python as the base image
FROM python:3.9

# Run pip install
RUN pip install -r requirements.txt

# Activate the Conda environment for subsequent commands
#SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# Set working directory inside the container
WORKDIR /app

# Make sure input/output directories exist
#RUN mkdir -p /app/input /app/output

# Add pneumokity files to app
COPY . /app/

# Set entry point
ENTRYPOINT ["python", "pneumokity.py"]
