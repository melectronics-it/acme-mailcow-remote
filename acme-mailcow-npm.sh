#!/bin/bash
scp /etc/letsencrypt/live/<mail-zertifikats-ordnername>/fullchain.pem root@'<mailcow-ip>':/opt/mailcow-dockerized/data/assets/ssl/cert.pem
scp /etc/letsencrypt/live/mail-zertifikats-ordnername/privkey.pem root@'<mailcow-ip>':/opt/mailcow-dockerized/data/assets/ssl/key.pem
ssh root@'<mailcow-ip>' -t "
docker restart mailcowdockerized_postfix-mailcow_1 &&
docker restart mailcowdockerized_nginx-mailcow_1 &&
docker restart mailcowdockerized_dovecot-mailcow_1
"
