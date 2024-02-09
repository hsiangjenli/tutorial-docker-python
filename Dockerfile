FROM jupyter/base-notebook:python-3.9.13

# Set the working directory in the container
WORKDIR /app

# Copy the files from the host to the container
COPY requirements.txt requirements.txt

# Install the required packages
RUN pip install -r requirements.txt