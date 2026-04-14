# Use python as the base image
FROM python:3.9

ADD . /pneumokity/

# Set working directory inside the container
WORKDIR /pneumokity

# Run pip install
RUN conda install bioconda::mash && \
    pip install --upgrade pip && \
    pip install .

# Set entry point
CMD ["pneumokity"]
