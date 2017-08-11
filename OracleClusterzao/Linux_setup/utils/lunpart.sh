#!/bin/bash
#set -xv

ORALUNS=`ls /dev/mapper/ |grep lun_ORACLOUD | grep -v p1`

for i in $ORALUNS
do
        PARTITION=/dev/mapper/$i"p1"
        if [ -L $PARTITION ]
                then
                        echo "UNABLE to create a partition"
						echo "The disk $i already has a partition."
                        ls -la $PARTITION
						echo " "
                else
                        echo "Partitioning disk $i"
						echo -e "o\nn\np\n1\n\n\nw" | fdisk /dev/mapper/$i
						kpartx -av /dev/mapper/$i
						ls -la $PARTITION
						echo " "
        fi
done