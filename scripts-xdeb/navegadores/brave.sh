#!/usr/bin/env bash

version=$(curl -s https://brave.com/latest/ | grep 'release-notes' | grep -Ev 'Windows Only' | head -1 | cut -d '>' -f3 | cut -d '<' -f1 | sed 's/v//g')
file=$(ls /opt/ 2> /dev/null | grep 'brave.com' | wc -l)


if [ "$file" = 0 ];then
	clear;echo "Installing Brave Browser"
	wget https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb
  xdeb brave-browser_${version}_amd64.deb
  sudo xbps-install -R binpkgs brave-browser-${version}_1
  rm -rf binpkgs brave-browser_${version}_amd64.deb data control.tar.xz data.tar.xz debian-binary destdir
	echo "Brave Installed"


elif [ "$version" != $(/opt/brave.com/brave/brave --version | cut -d ' ' -f3 | cut -c5-) ];then
	clear;echo "Updating Brave Browser"
	wget https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb
  xdeb brave-browser_${version}_amd64.deb
  sudo xbps-install -R binpkgs brave-browser-${version}_1
  rm -rf binpkgs brave-browser_${version}_amd64.deb data control.tar.xz data.tar.xz debian-binary destdir
	echo "Brave Updated to $version"

else
  echo "You already have the latest version ($version) of Brave Browser"
fi
