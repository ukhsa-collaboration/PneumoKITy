# Use python as the base image
FROM python:3.9

ADD . /pneumokity/

# Set working directory inside the container
WORKDIR /pneumokity

# Run pip install
RUN pip install --upgrade pip && \
    pip install -r /pneumokity/requirements.txt

# Set entry point
CMD ["python", "pneumokity.py"]
