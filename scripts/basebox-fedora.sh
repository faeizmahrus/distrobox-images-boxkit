#!/bin/sh

# Fix dnf stuff
echo "max_parallel_downloads = 20" >> /etc/dnf/dnf.conf
echo "minrate = 262144" >> /etc/dnf/dnf.conf
echo "timeout = 5" >> /etc/dnf/dnf.conf

# Install RPMFusion stuff
dnf update -y
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
dnf config-manager setopt fedora-cisco-openh264.enabled=1
dnf install -y ffmpeg intel-media-driver libva-intel-driver
dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld