# This Dockerfile builds the image used for the worker containers.
<<<<<<< HEAD
FROM  hashicorp/build-worker:now
=======
FROM ubuntu:xenial

# Inject the CA certificates.
#ADD ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

# Install software used by Terraform Enterprise.
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo unzip daemontools git-core ssh wget curl psmisc iproute2 openssh-client redis-tools netcat-openbsd
>>>>>>> parent of 306e218... Adding ca bundle to install.

# Install software used by the customer.
RUN apt-get install -y --no-install-recommends python3-ldap3