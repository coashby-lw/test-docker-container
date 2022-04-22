FROM ubuntu:latest
# Build Args
ARG DEBIAN_FRONTEND=noninteractive
ARG WORKDIR_NAME=coashby-demo

# Update the base image and acquire the latest updates.
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install \
    wget

# Add usr/bin directory to PATH
RUN echo 'export PATH=/usr/bin:$PATH' >> ~/.bashrc


VOLUME ["/$WORKDIR_NAME"]
WORKDIR ["/$WORKDIR_NAME"]
USER root
ENTRYPOINT ["/bin/bash"]
