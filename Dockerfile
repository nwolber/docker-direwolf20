# -----------------------------------------------------------------------------
# docker-minecraft
#
# Builds a basic docker image that can run a Minecraft server
# (http://minecraft.net/).
#
# Authors: Isaac Bythewood, Niklas Wolber
# Updated: 2014-12-18
# Require: Docker (http://www.docker.io/)
# -----------------------------------------------------------------------------


# Base system is the LTS version of Ubuntu.
FROM   ubuntu:14.04


# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive


# Download and install everything from the repos.
RUN    apt-get -y update; apt-get -y upgrade; apt-get -y install wget openjdk-7-jre-headless;


# Load in all of our config files.
ADD    ./scripts/start.sh /start.sh
ADD    ./scripts/install.sh /install.sh


# Fix all permissions
RUN    chmod +x /start.sh; chmod +x /install.sh


# 25565 is for minecraft
EXPOSE 25565

# /data contains static files and database
VOLUME ["/data"]

# /start runs it.
CMD    ["/start.sh"]
