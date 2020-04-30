FROM fedora:31

ARG KRANKERL_VERSION=v0.12.2

LABEL maintainer="Gary Kim <gary@garykim.dev>"
RUN dnf install -y jq findutils rdfind hub rustc cargo openssl-devel && dnf clean all

# Install Krankerl
RUN git clone https://github.com/ChristophWurst/krankerl -b $KRANKERL_VERSION /tmp/krankerl && cd /tmp/krankerl && cargo build --release && mv target/release/krankerl /usr/bin/krankerl && cd && rm -rf /tmp/krankerl

