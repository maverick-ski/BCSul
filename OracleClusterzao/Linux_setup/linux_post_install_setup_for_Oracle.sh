#!/bin/bash

###########################################################
#
#  name: linux_setup.sh
#  author: Pierre Ribeiro
#  version: 0.5
#  Date: 09/06/2017
#
###########################################################

#########################################################################################################################
#
#	Change History
#	01/06/2017 - Pierre Ribeiro - Adapted script for OEL 7. SysV behavior changed to systemd
#								- line string changed
#									from : ifconfig  | grep 'inet addr' |
#									to   : ifconfig  | grep 'inet' |
#								- Functions call changed
#									from : Base_Chkconfig | Oracle_11Pre    | Oracle_12cR1Pre
#									to   : Base_Systemctl | Oracle_11gR2Pre | Oracle_12cR1Pre
#								- Added function Oracle_12cR2Pre
#
#	09/06/2017 - Pierre Ribeiro - Added library to read config files
#								- Filling constants variables with command which
#								- Filling variables with config file
#								- Added conditional if on Base_Config()
#								- Added dinamyc config file name
#								- Added Command Line Argument handler getopts
#	
#	14/06/2017 - Pierre Ribeiro - Added function Init_vars to initialize variables from config.cfg
#								- Altered echo sentences on Base_Config function
#	
#	28/06/2017 - Pierre Ribeiro - Rewrited function Usage() to display a help file using less
#								- Rewrited function Fix_Hosts() to setup /etc/hosts file based on template file
#									or  HOSTNAME variable
#								- Rewrited function Base_Config() added "Seting static hostname" code
#
#	05/07/2017 - Pierre Ribeiro - Rewrited Main Section at while getops. Add "A)" option in case condition
#								- Rewrited Setup_Admins function layout
#
#
#########################################################################################################################

# Load the config library functions
source config.shlib

# Filling constants with command which

MV=`which mv | awk '{print $1}'`
RPM=`which rpm | awk '{print $1}'`
CAT=`which cat | awk '{print $1}'`
TAR=`which tar | awk '{print $1}'`

LESS=`which less | awk '{print $1}'`

CHMOD=`which chmod | awk '{print $1}'`
UNAME="`which uname | awk '{print $1}'` -r"
SYSTEMCTL=`which systemctl | awk '{print $1}'`
HOSTNAMECTL=`which hostnamectl | awk '{print $1}'`
IPLOCAL=`ifconfig  | grep 'inet' | awk '{print $2}' | cut -d ':' -f2 | grep -v 127.0.0`

# Initializing Variables
# Ver o que fazer com as variaveis abaixo

#flag=$1

#cfgFile=config.cfg
SCRIPT="linux_setup.sh"
TARBALL="/root/linux_setup.tar"
SETUP_DIR="/root/linux_setup"
RPM_DIR="$SETUP_DIR/RPMS"
ADMINGROUP=dba
REPO1='http://192.168.3.131/stage/repo_files/08262014_OL6_UEKR3.repo'
PASSWORD=yourpassword
db12cR1_stage_file1="http://your.ip.address/stage/oem/linuxamd64_12c_database_1of2.zip"
db12cR1_stage_file2="http://your.ip.address/stage/oem/linuxamd64_12c_database_2of2.zip"

Init_vars () {

		HOSTNAME="$(config_get $cfgFile hostname)"
		DOMAIN="$(config_get $cfgFile domain)"
		SEARCH="$(config_get $cfgFile search)"
		DNS1="$(config_get $cfgFile dns1)"
		DNS2="$(config_get $cfgFile dns2)"
		DNS3="$(config_get $cfgFile dns3)"
		
		}

Fix_Hosts() {
		Init_vars
		echo "#####################################################"
        echo " "
		file="hosts_template"
		if [ -f "$file" ]
		then
			$CAT hosts_template >> /etc/hosts
			echo "New entries added to /etc/hosts file."
		else			
			echo $IPLOCAL   $HOSTNAME$DOMAIN  $HOSTNAME >> /etc/hosts
			echo "New entries added to /etc/hosts file."
		fi
		echo " "
        echo "Done....."
        echo "#####################################################"
		
        }

Base_Config() {
		Init_vars
		echo "#####################################################"
        echo " "
		$HOSTNAMECTL status
		echo " "
		echo "Seting static hostname"
		$HOSTNAMECTL set-hostname $HOSTNAME
		echo " "
        $HOSTNAMECTL status
        echo "#####################################################"
        echo " "
        echo "Setting DNS Servers, Domain Search"
        cp /etc/resolv.conf /etc/resolv.conf.orig
        echo 'search '$SEARCH > /etc/resolv.conf
        echo 'nameserver '$DNS1 >> /etc/resolv.conf
        echo 'nameserver '$DNS2 >> /etc/resolv.conf
		if test -n $DNS3 && [ "$DNS3" = "__UNDEFINED__" ] ; then
			echo "There isn't configuration for the third name"
		else			
			echo 'nameserver '$DNS3 >> /etc/resolv.conf
		fi
        echo " "
        echo "#####################################################"
		echo " "
        echo "#####################################################"
        echo " "
        echo "Disabling selinux"
        setenforce 0
        cp /etc/selinux/config /etc/selinux/config.orig
        sed -e '/SELINUX/ s/^/#/' /etc/selinux/config > /etc/selinux/config.new
        mv -f /etc/selinux/config.new /etc/selinux/config
        echo SELINUX=disabled >> /etc/selinux/config
        rm -rf /etc/selinux/config.new
        echo " "
        echo "Done...."
		echo " "
        echo "#####################################################"

        }

Base_Systemctl() {
		Init_vars
        echo "#####################################################"
        echo " "
        echo "Changing systemctl settings"
        $SYSTEMCTL start ntpd.service
        $SYSTEMCTL disable iptables.service
        $SYSTEMCTL disable ip6tables.service
        echo " "
        echo "Done."

        }

Setup_Admins() {
		Init_vars              
        $SETUP_DIR/add_user_admins.sh
		echo "#####################################################"
        echo " "
        echo "Adding $ADMINGROUP to sudoers"
		echo " "
		echo "#####################################################"
        #add $ADMINGROUP to sudoers file
        echo "%"$ADMINGROUP' ALL=(ALL)     ALL' >> /etc/sudoers
        echo " "
        echo "Done."
		echo "#####################################################"
        }

OL6_Update() {
		Init_vars
        echo "#####################################################"
        echo " "

        echo "Setting Up YUM repository and running yum updates"
        cd /etc/yum.repos.d
        wget $REPO1
        $MV public-yum-ol6.repo public-yum-ol6.repo.disabled
        yum clean all
        sleep 10
        echo "Running yum update, this could take a while."
        yum update -y
        sleep 10

        echo " "
        echo "Done."

        }

SNMP_Setup() {
		Init_vars
        echo "#####################################################"
        echo " "
        echo "Setting Up snmp"

        #setup snmpd
        yum install net-snmp net-snmp-utils -y
        cp /etc/snmp/snmpd.conf /etc/snmp/snmpd.conf.orig
        echo rocommunity $ROCOMMUNITY >> /etc/snmp/snmpd.conf
        echo syslocation $SYSLOCATION >> /etc/snmp/snmpd.conf
        $CHKCONFIG snmpd on

        sleep 10

        echo " "
        echo "Done."

        }

Oracle_11gR2Pre() {
        echo "#####################################################"
        echo " "
        echo "Oracle RDBMS Preinstall"
        yum install oracle-rdbms-server-11gR2-preinstall.x86_64 -y
        sleep 10

        echo " "
        echo "Done."

        }

Oracle_12cR1Pre() {
        echo "#####################################################"
        echo " "
        echo "Oracle RDBMS Preinstall"
        yum install oracle-rdbms-server-12cR1-preinstall.x86_64 -y
        sleep 10

        echo " "
        echo "Done."

        }

Oracle_12cR2Pre() {
        echo "#####################################################"
        echo " "
        echo "Oracle RDBMS Preinstall"
        yum install oracle-database-server-12cR2-preinstall.x86_64 -y
        sleep 10

        echo " "
        echo "Done."

        }		
		
Oracle_Password() {
        echo "#####################################################"
        echo " "
        echo "Changing Oracle user password and dba group changes for /etc/sudoers"
        for USER in oracle
                do
                        echo "yourpassword" | passwd --stdin -f $USER
                done


        echo "%dba  ALL=(ALL)       NOPASSWD: ALL"   >> /etc/sudoers
        echo " "
        echo "Done."

        }

Oracle_Agent() {
        echo "#####################################################"
        echo " "
        echo "Oracle Management Agent user setup"
        $SETUP_DIR/user_add_oma.sh

        echo " "
        echo "Done."

        }

12cR1_Pre() {
        echo "#####################################################"
        echo " "
        echo "Oracle 12cR1 DB install pre-reqs for OEM"
        echo " "
        echo "Checking X11Forwarding"

        cat /etc/ssh/sshd_config | grep X11Forwarding
        read -p 'Is X11Forwarding set to Yes (yes/no?): '
        while true; do
                case $REPLY in
                        [yY]|[yY][eE][sS])      echo X11Forwarding yes Confirmed ; break ;;
                            [nN]|[nN][oO])      echo "/etc//ssh/sshd_config X11Forwarding must be set to X11Forwarding yes to continue. Exiting" ; exit ;;
                                        *)      echo "Invalid argument, Exiting. Please re-run script." ; exit;;
                esac
        done

        echo " "
        echo "Setting tmpfs to 4G"
        umount shmfs
        mount -t tmpfs shmfs -o size=4g /dev/shm
        DATE=`date +%m%d%y`
        cp /etc/fstab /etc/fstab.$DATE
        sed -e '/tmpfs/ s/^/#/' /etc/fstab > /etc/fstab.new
        echo "tmpfs        /dev/shm        tmpfs    size=4g        0 0" >> /etc/fstab.new
        mv -f /etc/fstab.new /etc/fstab
        echo "tmpfs set to 4G and fixed in fstab"
        sleep 5

        echo " "
        echo "Setting security limits in /etc/security/limits.d/oracle-rdbms-server-12cR1-preinstall.conf"
        echo "Note: oracle-rdbms-server-12cR1-preinstall has limits set in a new file /etc/security/limits.d/oracle-rdbms-server-12cR1-preinstall.conf"
        sleep 10
        sed -i.$DATE s/'nofile    1024'/'nofile    4096'/g /etc/security/limits.d/oracle-rdbms-server-12cR1-preinstall.conf
        echo "Setting security limits in /etc/security/limits.d/90-nproc.conf"
        sed -i.$DATE s/1024/16384/g /etc/security/limits.d/90-nproc.conf
        echo "security limits set"
        sleep 5
        echo " "
        wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noa...
        rpm -ivh epel-release-6-8.noarch.rpm
        sed -i.$DATE s/'gpgcheck=1'/'gpgcheck=0'/g /etc/yum.repos.d/epel.repo
        yum install sshpass -y
        sleep 5
        echo "Now we need to validate oracle nofile limit is >= 4096."
        echo "To do this we will install and remove when done, epel and sshpass."
        echo " "
        sshpass -p $PASSWORD ssh oracle@localhost ulimit -n
        read -p 'Script just ran command to list ulimit -n for oracle user, was the value displayed >=4096 (yes/no?): '
        while true; do
                case $REPLY in
                        [yY]|[yY][eE][sS])      echo "ulimit -n setting validated." ; break ;;
                            [nN]|[nN][oO])      echo "If the oracle soft nofile limit is not set, an error will be received during OEM installation, you must correct this issue." ; break ;;
                                        *)      echo "Invalid argument, Exiting. Please verify ulimit -n >= 4096 for oracle user prior to OEM installation." ; break ;;
                esac
        done
        sleep 5
        rpm -e sshpass-1.05-1.el6.x86_64
        rpm -e epel-release-6-8.noarch
        rm -rf /etc/yum.repos.d/epel.repo.rpmsave
        rm -rf /root/linux_setup/epel-release-6-8.noarch.rpm
        echo " "
        echo "/etc/yum.repos.d/epel.repo.rpmsave removed."
        echo "Done with security limits."

        }

12cR1_Stage() {
        echo "#####################################################"
        echo " "
        echo "Staging Oracle 12cR1 install files."
        mkdir -p /u01/stage/db12c; cd /u01/stage/db12c; wget $db12cR1_stage_file1; wget $db12cR1_stage_file2
        unzip linuxamd64_12c_database_1of2.zip; unzip linuxamd64_12c_database_2of2.zip
        sleep 5
        echo " "
        echo "Removing zip files to save space."
        rm -rf /u01/stage/db12c/linuxamd64_12c_database*
        echo " "
        echo "Staging Done."

        }


12cR1_Profile() {
        echo "#####################################################"
        echo " "
        echo "Setting up ~/bash_profile for oracle user for 12cR1 and OEM 12cR4."
        DATE=`date +%m%d%y`
        cp /home/oracle/.bash_profile /home/oracle/.bash_profile.$DATE
        cat /root/linux_setup/oracle_bash_profile.txt >> /home/oracle/.bash_profile

        echo " "
        echo "oracle user ~/.bash_profile setup complete."

        }

12cR1_Install() {
        echo "#####################################################"
        echo " "
        echo "Creating oraInst.loc file in /etc."
        DATE=`date +%m%d%y`
        #cp /etc/oraInst.loc /etc/oraInst.loc.$DATE
        #cp /root/linux_setup/oraInst.loc /etc/oraInst.loc
        #chown oracle:oinstall /etc/oraInst.loc; chmod 664 /etc/oraInst.loc
        echo "Creating OFA standard directories."
        mkdir -p /u01/app/oracle/product/12.1.0/dbhome_1
        chown -R oracle:oinstall /u01/*
        chmod -R 775 /u01/*
        echo " "
        echo "OFA directories created'"
        echo " "
        echo "Beginning Oracle 12cR1 DB install using OUI. You will be required to type the oracle password to begin the install."
        sleep 10
       n  ssh -X oracle@localhost /u01/stage/db12c/database/runInstaller
        echo " "
        echo "Script call Oracle 12cR1 OUI install complete."

        }

12cR1_Post() {
        echo "#####################################################"
        mkdir /u01/app/oracle/product/redo_logs/
        echo " "
        echo "Modifying /ehappier and easier"

		}		

Usage()
{
    less -FX man_linux_setup	
}
		
# Main Section

if ( ! getopts "f:bsaoh" opt); then
	echo "`basename $0`: You must one of these options [-bsao] [-f filename]";
	echo "Try ./`basename $0` -h for help information"
	exit $E_OPTERROR;
fi

while getopts f:bsaoh opt
do
    case "$opt" in
		f)  cfgFile="$OPTARG";;
		b)  Base_Config;;
		s)	Base_Systemctl;;
		a)	Setup_Admins;;
		o)	Oracle_12cR2Pre;;
		A)	Base_Config;;
			Fix_Hosts;;
			Base_Systemctl
			Setup_Admins;;
			Oracle_12cR2Pre;;
		h)	Usage;;
		\?)	echo >&2 "usage: $0 [-v] [-f filename] [file ...]"
			exit 1;;
    esac
done
shift `expr $OPTIND - 1`