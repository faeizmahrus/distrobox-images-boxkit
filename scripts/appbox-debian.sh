#!/bin/sh

# Install Brave, Zotero and KeePassXC
apt install -y brave-browser zotero keepassxc-full

# Install official LibreOffice
wget https://download.documentfoundation.org/libreoffice/stable/7.2.2/deb/x86_64/LibreOffice_7.2.2_Linux_x86-64_deb.tar.gz
tar -xvf LibreOffice_7.2.2_Linux_x86-64_deb.tar.gz
apt install -y ./LibreOffice_7.2.2.2_Linux_x86-64_deb/DEBS/*.deb
rm -rf LibreOffice_7.2.2_Linux_x86-64_deb.tar.gz LibreOffice_7.2.2.2_Linux_x86-64_deb

# Install official Obsidian
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.7/obsidian_1.7.7_amd64.deb
apt install -y obsidian_1.7.7_amd64.deb
rm -rf obsidian_1.7.7_amd64.deb