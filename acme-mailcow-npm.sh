#!/bin/bash
mailcow_server='<your mailcow server ip address>'
cert_folder_name="<your-cert-directory-name>"
scp /etc/letsencrypt/live/$cert_folder_name/fullchain.pem root@$mailcow_server:/opt/mailcow-dockerized/data/assets/ssl/cert.pem
scp /etc/letsencrypt/live/$cert_folder_name/privkey.pem root@$mailcow_server:/opt/mailcow-dockerized/data/assets/ssl/key.pem
ssh root@$mailcow_server -t "
docker restart mailcowdockerized_postfix-mailcow_1 &&
docker restart mailcowdockerized_nginx-mailcow_1 &&
docker restart mailcowdockerized_dovecot-mailcow_1
"
