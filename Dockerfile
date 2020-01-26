FROM fedora:31

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq && dnf clean all

