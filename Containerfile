FROM ghcr.io/ublue-os/bazzite-deck:latest

COPY build.sh /tmp/build.sh

RUN rpm-ostree install dnf-plugins-core -A && \
	ostree container commit

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
