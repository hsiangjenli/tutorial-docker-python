FROM python:3.9.18-slim

# Set the working directory in the container
WORKDIR /app

# Copy the files from the host to the container
COPY requirements.txt requirements.txt

# Install the required packages
RUN pip install -r requirements.txt

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]