#!/usr/bin/env bash

echo "Installing Discord"
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
xdeb discord.deb
version=$(grep Version data/control | head -1 | cut -d ' ' -f2)
sudo xbps-install -R binpkgs discord-${version}_1
rm -rf binpkgs discord.deb data control.tar.gz data.tar.gz debian-binary destdir
echo "Discord Installed"

