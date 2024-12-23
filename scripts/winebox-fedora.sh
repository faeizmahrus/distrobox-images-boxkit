#!/bin/sh

# Add WineHQ repo and install winehq-staging
dnf5 config-manager addrepo --from-repofile=https://dl.winehq.org/wine-builds/fedora/41/winehq.repo
dnf install -y winehq-staging