#!/bin/sh

# Enable WineHQ repo
dnf5 config-manager -y addrepo --from-repofile=https://dl.winehq.org/wine-builds/fedora/41/winehq.repo
# Install winehq-staging
dnf install -y winehq-staging