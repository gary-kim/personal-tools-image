FROM fedora:43

ARG KRANKERL_VERSION=v0.14.0

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq rdfind gh rustc cargo openssl-devel make nodejs npm pnpm git patch gcc g++ python3-distutils-extra python3-setuptools composer && dnf clean all && npm i -g yarn
ENV NODE_OPTIONS=--openssl-legacy-provider

# Install Krankerl
RUN curl --output /usr/bin/krankerl -L https://github.com/ChristophWurst/krankerl/releases/download/$KRANKERL_VERSION/krankerl && chmod +x /usr/bin/krankerl

