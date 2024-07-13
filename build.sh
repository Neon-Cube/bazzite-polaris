#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

rpm-ostree override remove gamescope gamescope-libs gamescope-shaders # HACK?
rpm-ostree install https://koji.fedoraproject.org/koji/buildinfo?buildID=2407683 # gamescope 3.14.2-1.fc40
