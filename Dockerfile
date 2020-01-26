FROM fedora:31

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq findutils rdfind && dnf clean all

