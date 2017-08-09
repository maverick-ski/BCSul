#!/bin/bash
set -xv

ORALUNS=`ls /dev/mapper/ |grep lun_ORACLOUD | grep -v p1`

for i in $ORALUNS
do
    echo -e "o\nn\np\n1\n\n\nw" | fdisk /dev/mapper/$i
    kpartx -av /dev/mapper/$i
    ORALUNPART=`dmsetup table | grep $i | grep linear | awk '{print $1}' | sed -e 's/\://g'`
    ASMDISKLABEL=ASMDISK_`echo $i | sed -r 's/lun_//'`
    /etc/init.d/oracleasm createdisk $ASMDISKLABEL /dev/mapper/$ORALUNPART
done
/etc/init.d/oracleasm listdisks
