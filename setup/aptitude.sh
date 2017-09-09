#!/bin/sh
apt-get remove firefox
apt-get remove pidgin-libnotify
apt-get remove pidgin
apt-get remove brasero
apt-get remove mint-meta-cinnamon
apt-get remove mint-meta-core
apt-get remove mintwelcome
apt-get remove brasero-cdrkit
apt-get remove rhythmbox-plugin-cdrecorder
apt-get remove libbrasero-media3-1
apt-get remove brasero-common
apt-get remove libpurple-bin
apt-get remove libpurple0
apt-get remove pidgin-data
apt-get remove mint-meta-codecs
apt-get remove mint-meta-codecs-core
apt-get remove adobe-flashplugin
apt-get remove xplayer-plugins-extra
apt-get remove xplayer-plugins
apt-get remove xplayer-mozilla
apt-get remove xplayer
apt-get remove firefox-locale-en

apt autoremove

add-apt-repository ppa:nathan-renniewaldock/flux
add-apt-repository ppa:gnome-terminator/ppa
add-apt-repository ppa:numix/ppa
add-apt-repository ppa:ricotz/docky
echo 'deb http://polybox.ethz.ch/repo/Ubuntu_16.04/ /' >> /etc/apt/sources.list.d/polybox-client.list

apt-get update

apt-get install fluxgui
apt-get install sublime-text-installer
apt-get install gparted
/usr/bin/apt install virtualbox virtualbox-ext-pack
apt-get install virtualbox-qt
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs
apt-get install terminator
apt-get install numix-gtk-theme numix-icon-theme-circle
apt-get install plank
apt-get install polybox-client
apt install git
apt-get install meld
apt-get install gir1.2-gtop-2.0

npm install -g react-native-cli
  