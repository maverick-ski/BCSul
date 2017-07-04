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
# get newgroups file from first arg on cmd line or default to 'defaultNewGroups.txt'
NGF="${1:-defaultNewGroups.txt}"
# get existing groupnames and guids.
gnames="^($(getent group | cut -d: -f1 | paste -sd'|'))$"
gids="^($(getent group | cut -d: -f3 | paste -sd'|'))$"

while IFS=: read GNAME GID ; do

    groupadd -g $GID $GNAME
    echo "Created group => $GNAME (GID $GID)"
	
done < <(awk -F: '$1 !~ gnames && $2 !~ gids' gnames="$gnames" gids="$gids" "$NGF")

echo "#####################################################"
echo " "
echo "Groups not created because the Groupname or GID already exist:"
echo " "
awk -F: '$1 ~ gnames || $2 ~ gids' gnames="$gnames" gids="$gids" "$NGF" >&2
echo 
echo "Done...."
echo " "
echo "#####################################################"

echo "#####################################################"
echo " "
echo "Oracle's Administrative Users"
echo " "
# get newusers file from first arg on cmd line or default to 'defaultNewUsers.txt'
NUF="${2:-defaultNewUsers.txt}"

# get existing usernames and uids.
names="^($(getent passwd | cut -d: -f1 | paste -sd'|'))$"
uids="^($(getent passwd | cut -d: -f3 | paste -sd'|'))$"

while IFS=: read u uid gname subg gecos shell; do
    homedir="/home/$u"

    useradd -m -u "$uid" -g "$gname" -G "$subg" -c "$gecos" -s "$shell" -d "$homedir" "$u"
	echo "Created user => $u"
    echo "$u" | passwd --stdin -f $u
  	echo "Default password => $u"
    echo " "

done < <(awk -F: '$1 !~ names && $2 !~ uids' names="$names" uids="$uids" "$NUF")

echo "#####################################################"
echo " "
echo "Users not created because the username or uid already exist:"
echo " "
awk -F: '$1 ~ names || $2 ~ uids' names="$names" uids="$uids" "$NUF" >&2
echo " "
echo "Done...."
echo " "
echo "#####################################################"