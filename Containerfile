FROM ghcr.io/ublue-os/bazzite-deck:latest

COPY build.sh /tmp/build.sh

RUN rpm-ostree install yum-plugin-copr && \
    ostree container commit

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
