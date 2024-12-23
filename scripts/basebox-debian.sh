#!/bin/sh

# Update debian
apt update -y && apt upgrade -y

# Add Zotero and Brave repos
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | bash

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list

# Update debian again
apt update -y && apt upgrade -y
