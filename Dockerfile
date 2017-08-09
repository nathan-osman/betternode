FROM node:latest
MAINTAINER Nathan Osman <nathan@quickmediasolutions.com>

# sudo is required for switching users
RUN \
    apt-get update && \
    apt-get install -y sudo && \
    rm -rf /var/lib/apt/lists/*

# Add the betternode.sh script
ADD betternode.sh /usr/local/bin/

# Set the default entrypoint
ENTRYPOINT ["/usr/local/bin/betternode.sh"]
