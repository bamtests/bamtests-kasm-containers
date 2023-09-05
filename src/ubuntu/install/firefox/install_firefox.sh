#!/usr/bin/env bash
set -xe

add-apt-repository -y ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' > /etc/apt/preferences.d/mozilla-firefox

apt-get install -y firefox p11-kit-modules

sed -i 's#/usr/share/firefox/firefox#/usr/share/firefox/firefox --no-sandbox##' /usr/share/applications/firefox.desktop
cp /usr/share/applications/firefox.desktop $HOME/Desktop
chmod +x $HOME/Desktop/firefox.desktop
chown 1000:1000 $HOME/Desktop/firefox.desktop