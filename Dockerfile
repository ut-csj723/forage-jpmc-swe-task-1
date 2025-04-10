# syntax=docker/dockerfile:1
FROM python:2.0
USER root
RUN dnf -y update && dnf clean all

# without stunnel/Broker
CMD ["bash", "-c", "exec gunicorn"]
