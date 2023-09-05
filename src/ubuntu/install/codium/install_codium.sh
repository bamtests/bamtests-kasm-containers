#!/usr/bin/env bash
set -ex
wget 'https://github.com/VSCodium/vscodium/releases/download/1.81.1.23222/codium_1.81.1.23222_amd64.deb' -O codium.deb
sudo apt-get install -y ./codium.deb
rm -f ./codium.deb

sed -i 's#/usr/share/codium/codium#/usr/share/codium/codium --no-sandbox##' /usr/share/applications/codium.desktop
cp /usr/share/applications/codium.desktop $HOME/Desktop
chmod +x $HOME/Desktop/codium.desktop
chown 1000:1000 $HOME/Desktop/codium.desktop