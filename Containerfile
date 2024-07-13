FROM ghcr.io/ublue-os/bazzite-deck:latest

COPY build.sh /tmp/build.sh

COPY packages/gamescope-3.14.2-1.fc40.x86_64.rpm /

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
