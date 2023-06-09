FROM python:3.7.3-stretch

# Working Directory
WORKDIR /dockerproj

# Copy source code to working directory
COPY . dockerproj.py /dockerproj/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt