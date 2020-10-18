#!/bin/bash
systemctl disable v2ray.service --now
rm -r /usr/bin/v2ray/
rm /etc/systemd/system/v2ray.service
rm /lib/systemd/system/v2ray.service
rm /etc/init.d/v2ray
mv /etc/v2ray/ /usr/local/etc/
id nobody
chown -R nobody:nogroup /var/log/v2ray/
id nobody
chown -R nobody:nobody /var/log/v2ray/
curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
bash install-release.sh
service v2ray start
