#!/bin/bash
#set -xv

BLKS=`ls /sys/block/ |grep sd | grep -v dm`

for i in $BLKS
do
    echo 1 > /sys/block/$i/device/rescan	
done
