## PACKER
First probe for create image with Packer.
Doing image from ubuntu and install nginx.
```bash
source preload-vars.sh
packer validate ubuntu-nginx
packer build ubuntu-nginx
```

Other commands:
```bash
packer init ubuntu-nginx #load plugins binary files
packer fmt ubuntu-nginx #format your file to Standart format
packer inspect ubuntu-nginx #show structure your configuration
```

Test