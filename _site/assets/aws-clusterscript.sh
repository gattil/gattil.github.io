#!/bin/bash
apt-get update
apt-get -y upgrade
echo "fs-f4b441ad.efs.eu-central-1.amazonaws.com:/    /mnt/efs   nfs4    defaults,acl" >> /etc/fstab
mkdir /mnt/efs
mount -a
chmod go+rw /mnt/efs
chmod 777 /mnt/efs
sudo apt-get update
sudo apt-get install -y software-properties-common debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
