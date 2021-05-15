#!/bin/bash

set -e

export OVH_SERVER_ID="ns5xxxxx.ip-x-x-x.net"
export BACKUP_HOST_PREFIX="ftpback-bhs1-x"

yum install nfs-utils rpcbind
/etc/init.d/rpcbind start


sudo mkdir -p /mnt/backups
sudo mount -t nfs "$BACKUP_HOST_PREFIX:/export/ftpbackup/$OVH_SERVER_ID" /mnt/backups
