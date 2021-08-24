FROM fedora:34

ARG KRANKERL_VERSION=v0.13.1

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq findutils rdfind hub rustc cargo openssl-devel make nodejs npm git && dnf clean all && npm i -g yarn

# Install Krankerl
RUN curl --output /usr/bin/krankerl -L https://github.com/ChristophWurst/krankerl/releases/download/$KRANKERL_VERSION/krankerl && chmod +x /usr/bin/krankerl

