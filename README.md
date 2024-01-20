## PACKER
First probe for create image with Packer.
Doing image from ubuntu and install nginx.
```bash
source preload-vars.sh
packer validate ubuntu-nginx
packer build ubuntu-nginx
```
