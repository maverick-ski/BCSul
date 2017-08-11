#!/bin/bash
#set -xv

ORALUNS=`ls /dev/mapper/ |grep lun_ORACLOUD | grep -v p1`

for i in $ORALUNS
do
    echo -e "d\nw" | fdisk /dev/mapper/$i
    kpartx -av /dev/mapper/$i
	dd if=/dev/zero of=/dev/$i bs=1024 count=100
done