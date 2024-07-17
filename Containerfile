FROM ghcr.io/ublue-os/bazzite-deck:latest

RUN rpm-ostree install dnf-plugins-core -A && \
	ostree container commit

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
