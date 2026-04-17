# Use python as the base image
FROM continuumio/miniconda3

ADD . /pneumokity/

# Set working directory inside the container
WORKDIR /pneumokity

# Run pip install
RUN conda config --add channels bioconda && \
    conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install python=3.9 && \
    conda install bioconda::mash && \
    pip install --upgrade pip && \
    pip install .

# Set entry point
CMD ["pneumokity"]
