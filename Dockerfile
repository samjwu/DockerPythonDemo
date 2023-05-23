# syntax=docker/dockerfile:1

# official python images: https://hub.docker.com/_/python
FROM python:3.10.11-bullseye

# set working directory
# Docker will this path as the default location for all subsequent commands
WORKDIR /app

# copy Python requirements to working directory
COPY requirements.txt requirements.txt

# install Python requirements
RUN pip3 install -r requirements.txt

# copy source code to working directory
COPY . .

# run flask app
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
