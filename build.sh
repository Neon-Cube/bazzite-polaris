#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

rpm-ostree override replace --remove=gamescope gamescope-3.14.2-1.fc40.x86_64.rpm