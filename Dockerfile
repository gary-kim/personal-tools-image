FROM fedora:32

ARG KRANKERL_VERSION=v0.12.3

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq findutils rdfind hub rustc cargo openssl-devel make node npm && dnf clean all && npm i -g yarn

# Install Krankerl
RUN git clone https://github.com/ChristophWurst/krankerl -b $KRANKERL_VERSION /tmp/krankerl && cd /tmp/krankerl && cargo build --release && mv target/release/krankerl /usr/bin/krankerl && cd && rm -rf /tmp/krankerl

