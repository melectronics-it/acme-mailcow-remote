###### ACME Certificates Reverse Proxy Mailcow Copy Script ######

This script copy the ACME(LetsEncrypt) SSL Certificates from a Reverse Proxy Machine into a Mailcow Mailserver for secure the E-Mail
transfer with SSL/TLS. 

## How works it? ##

1. You must exchange ssh keys from the server where the certificates are and the mailcow mailserver.
   - The Copy Process was performed over SCP, and restarting the affected Docker Containers over SSH
2. In the Script are placeholders for the certificates directory and the mailcow server address: You must edit this for your situation