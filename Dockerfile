# This Dockerfile builds the image used for the worker containers.
FROM ubuntu:xenial

# Install software used by Terraform Enterprise and extras.
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo unzip daemontools git-core ssh wget curl psmisc iproute2 openssh-client redis-tools netcat-openbsd \
    ca-certificates \
    python3-ldap3

# Include the TFE CA certificate.
ADD tfeCA.crt /usr/local/share/ca-certificates/tfeCA.crt

# Insert the CA certificate as part of the trust.
RUN update-ca-certificates