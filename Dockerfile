# This Dockerfile builds the image used for the worker containers.
FROM  hashicorp/build-worker:now

# Install software used by the customer.
RUN apt-get install -y --no-install-recommends python3-ldap3