#!/usr/bin/env bash
set -ex
wget -q "https://github.com/FreeTubeApp/FreeTube/releases/download/v0.19.0-beta/freetube_0.19.0_amd64.deb" -O freetube.deb
apt-get update
apt-get install -y ./freetube.deb
rm  -f freetube.deb

sed -i "s#Exec=/opt/freetube/freetube#Exec=/opt/freetube/freetube --no-sandbox#g"  /usr/share/applications/freetube.desktop
cp /usr/share/applications/freetube.desktop $HOME/Desktop
chmod +x $HOME/Desktop/freetube.desktop
chown 1000:1000 $HOME/Desktop/freetube.desktop