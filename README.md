# ACME Certificates Reverse Proxy Mailcow Copy Script #

This script copy the ACME(LetsEncrypt) SSL Certificates from a Reverse Proxy Machine into a Mailcow mailserver for secure the E-Mail
transfer with SSL/TLS. 

### How works it? ###

1. You must exchange ssh keys from the reverse proxy / server where the certificates are and the mailcow mailserver. It must be **without** key passphrase!!
   - The copy process is performed over SCP and restarting the affected docker containers over SSH
2. In the script are placeholders for the certificates directory and the mailcow server address: You must edit this for your situation
