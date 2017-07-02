#!/bin/bash
#set -xv
###########################################################
#
#  name: add_user_admins.sh
#  author: Pierre Ribeiro
#  version: 0.1
#  Date: 28/06/2017
#
###########################################################

# Add administrative groups and users based on a list from config file

echo "#####################################################"
echo " "
echo "Oracle's Administrative Groups"
echo " "
GROUP="bcsul_admin:grid:asm:oper"
set -f                      # avoid globbing (expansion of *)
array=(${GROUP//:/ })
for i in "${!array[@]}"
do
    echo "$i=>${array[i]}"
    echo "groupadd -g 500$i ${array[i]}"
done
echo "Done...."
echo " "
echo "#####################################################"

echo "#####################################################"
echo " "
echo "Oracle's Administrative Users"
echo " "
# get newusers file from first arg on cmd line or default to 'newusers.txt'
nf="${1:-newusers.txt}"

# get existing usernames and uids.
names="^($(getent passwd | cut -d: -f1 | paste -sd'|'))$"
 uids="^($(getent passwd | cut -d: -f3 | paste -sd'|'))$"

while IFS=: read u uid gecos shell; do
    gid="$uid" ; homedir="/home/$u"

    echo "useradd  -m -d "$homedir" -c "$gecos" -u "$uid" -g "$gid" -s "$shell" "$u""
	echo ""$u" | passwd --stdin -f $u"
	
	echo "Created user => $u"
	echo "Default password => $u"
	
    echo "groupadd -g "$gid" "$u""

done < <(awk -F: '$1 !~ names && $2 !~ uids' names="$names" uids="$uids" "$nf")

echo "#####################################################"
echo " "
echo "Users not created because the username or uid already existed: >&2"
echo " "
awk -F: '$1 ~ names || $2 ~ uids' names="$names" uids="$uids" "$nf" >&2
echo "Done...."
echo " "
echo "#####################################################"









