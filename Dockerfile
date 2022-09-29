FROM fedora:37

ARG KRANKERL_VERSION=v0.13.3

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq findutils rdfind hub rustc cargo openssl-devel make nodejs npm git patch gcc g++ && dnf clean all && npm i -g yarn
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install Krankerl
RUN curl --output /usr/bin/krankerl -L https://github.com/ChristophWurst/krankerl/releases/download/$KRANKERL_VERSION/krankerl && chmod +x /usr/bin/krankerl

