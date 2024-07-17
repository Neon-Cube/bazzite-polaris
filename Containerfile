FROM ghcr.io/ublue-os/bazzite-deck:latest

ADD https://copr.fedorainfracloud.org/coprs/kylegospo/bazzite/repo/fedora-40/kylegospo-bazzite-fedora-40.repo /etc/yum.repos.d

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
