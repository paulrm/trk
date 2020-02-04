#!/bin/bash

# TODO: if hostename no seteado ERROR
DATA_DIR=~/etc/
mkdir -p $DATA_DIR

### NETWORK
hostname                           > $DATA_DIR/network.txt
ip addr                            >> $DATA_DIR/network.txt
cat /etc/resolv.conf               >> $DATA_DIR/network.txt
route -n                           >> $DATA_DIR/network.txt

### PACKAGES
# TODO: Agregar control de si es no es RedHat/Centos 
rpm -qa | sort                      > $DATA_DIR/packages.lst
yum repolist                        > $DATA_DIR/repositories.lst
yum list updates                    > $DATA_DIR/updates.lst

# TODO: Agregar control que no de error si snap no esta instalado 
snap list                           > $DATA_DIR/snap.lst

### Node Modules
# TODO: Agregar control de que no de error si npm no esta instalado                     
     
npm list -g                        > $DATA_DIR/npm-global.lst
npm list                           > $DATA_DIR/npm.lst

# FILESYSTEM
df -h / | sort | grep -v Filesystem > $DATA_DIR/df.lst
