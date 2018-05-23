#!/bin/bash
apt-get update
apt-get -y upgrade
echo "fs-f4b441ad.efs.eu-central-1.amazonaws.com:/    /mnt/efs   nfs4    defaults,acl" >> /etc/fstab
mkdir /mnt/efs
mount -a
chmod go+rw /mnt/efs
chmod 777 /mnt/efs
