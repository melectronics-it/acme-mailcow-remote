#!/bin/bash
scp /etc/letsencrypt/live/mail.mmehn.de-0001/fullchain.pem root@'10.0.0.5':/opt/mailcow-dockerized/data/assets/ssl/cert.pem
scp /etc/letsencrypt/live/mail.mmehn.de-0001/privkey.pem root@'10.0.0.5':/opt/mailcow-dockerized/data/assets/ssl/key.pem
ssh root@'10.0.0.5' -t "
docker restart mailcowdockerized_postfix-mailcow_1 &&
docker restart mailcowdockerized_nginx-mailcow_1 &&
docker restart mailcowdockerized_dovecot-mailcow_1
"
