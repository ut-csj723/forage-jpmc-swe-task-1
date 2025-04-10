# syntax=docker/dockerfile:1
FROM python:3.13
USER root
RUN dnf -y update && dnf clean all

# without stunnel/Broker
CMD ["bash", "-c", "exec gunicorn"]
