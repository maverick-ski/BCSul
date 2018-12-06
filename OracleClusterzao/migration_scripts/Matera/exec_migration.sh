#!/bin/bash

shopt -s expand_aliases
source /home/oracle/.bashrc
source .params

TimeStamp () {

TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "AT $TIMESTAMP"

}

start_bcsulcdb () {

echo "****************************"
echo " Starting Instance BCSulCDB "
echo "****************************"
TimeStamp
echo "****************************"
echo $USER_STRING | sudo su - oragrid -c "srvctl start database -d bcsulcdb"
sleep 20
echo "*********************"
echo " Starting PDB Matera "
echo "*********************"
echo @$SCRIPTS_HOME/open_matera_pdb.sql | sys
sleep 20
echo " "
echo "Ending function start_bcsulcdb"
TimeStamp
echo " "
}

stop_bcsulcdb () {

echo "***************************"
echo " Stoping Instance BCSulCDB "
echo "***************************"
TimeStamp
echo $USER_STRING | sudo su - oragrid -c "srvctl stop database -d bcsulcdb"
sleep 20
echo " "
echo "Ending function stop_bcsulcdb" 
TimeStamp
echo " "
}

restart_bcsulcdb () {

stop_bcsulcdb
start_bcsulcdb

}

skeleton_scripts () {

echo "********************************"
echo " Creating Matera base structure "
echo "********************************"
TimeStamp
echo @$SCRIPTS_HOME/00_main.sql | sysmatera
echo " "
echo "Ending function skeleton_scripts"
TimeStamp
echo " "
}

put_tbl_rwrite () {

echo "*************************"
echo " Setting RO tables to RW "
echo "*************************"
TimeStamp
echo @$SCRIPTS_HOME/check_tbl_ronly.sql | sysmatera
echo " "
echo "Ending function put_tbl_rwrite" 
TimeStamp
echo " "
}

set_parameters () {

echo "**********************************"
echo " Setting Matera spfile parameters "
echo "**********************************"
TimeStamp
echo @$SCRIPTS_HOME/set_parameters.sql | sysmatera
echo " "
echo "Ending function set_parameters"
TimeStamp
echo " "
}

create_all_public_synonyms () {

echo "**********************************"
echo " Creating Matera public synonyms  "
echo "**********************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_synonyms.sql | sysmatera
echo " "
echo "Ending function create_public_synonyms"
TimeStamp
echo " "
}

create_public_tbl_synonyms () {

echo "*****************************************"
echo " Creating Matera public tables synonyms  "
echo "*****************************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_tbl_synonyms.sql | sysmatera
echo " "
echo "Ending function create_public_tbl_synonyms"
TimeStamp
echo " "
}

create_public_others_synonyms () {

echo "*****************************************"
echo " Creating Matera others public synonyms  "
echo "*****************************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_others_synonyms.sql | sysmatera
echo " "
echo "Ending function create_public_others_synonyms"
TimeStamp
echo " "
}

add_constraints () {

echo "***********************************************"
echo " Adding Matera Constraints and REF Constraints "
echo "***********************************************"
TimeStamp
echo @$SCRIPTS_HOME/add_constraints.sql | sysmatera
echo " "
echo "Ending function add_constraints"
TimeStamp
echo " "
}

recompile () {

echo "***************************"
echo " Recompile Matera objects  "
echo "***************************"
TimeStamp
echo @$SCRIPTS_HOME/recompile.sql | sysmatera
echo " "
echo "Ending function recompile"
TimeStamp
echo " "
}

gather_stats () {

echo "******************************"
echo " Gathering Matera statistics  "
echo "******************************"
TimeStamp
echo @$SCRIPTS_HOME/gather_stats.sql | sysmatera
echo " "
echo "Ending function gather_stats"
TimeStamp
echo " "
}

create_dblinks () {

echo "**************************"
echo " Creating Matera dblinks  "
echo "**************************"
TimeStamp
echo @$SCRIPTS_HOME/create_dblinks.sql | sysmatera
echo " "
echo "Ending function create_dblinks"
TimeStamp
echo " "
}

imp_metadata_full () {

echo "**************************************************************************************"
echo " Importing Matera metadata excluding CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,TRIGGERS "
echo "**************************************************************************************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,TRIGGER TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:metadata_imp_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_metadata_full"
TimeStamp
echo " "
}

imp_metadata () {

echo "***************************"
echo " Importing Matera metadata "
echo "***************************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=6 status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','PUBLIC','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,VIEW,PROCEDURE,FUNCTION,TRIGGER,PACKAGE,PACKAGE_BODY TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:metadata_imp_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_metadata"
TimeStamp
echo " "
}

imp_data () {

echo "***********************"
echo " Importing Matera data "
echo "***********************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=6 status=600 schemas=\('CHANGE_SPB','FINPAC','FINPAC_CUSTOM','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) CONTENT=DATA_ONLY TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y TABLE_EXISTS_ACTION=APPEND directory=PUMP_DIR dumpfile=RACFINL_MATERA_DATA_01.DMP, RACFINL_MATERA_DATA_02.DMP, RACFINL_MATERA_DATA_03.DMP, RACFINL_MATERA_DATA_04.DMP,RACFINL_MATERA_DATA_05.DMP,RACFINL_MATERA_DATA_06.DMP logfile=PUMP_DIR:data_imp_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_data"
TimeStamp
echo " "
}

imp_pfvp () {

echo "***********************"
echo " Importing Matera PFVP "
echo "***********************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=1 status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','PUBLIC','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) INCLUDE=VIEW,PROCEDURE,FUNCTION,PACKAGE,PACKAGE_BODY CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:pfvp_imp_metadata_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_pfvp"
TimeStamp
echo " "
}

imp_index () {

echo "**************************"
echo " Importing Matera indexes "
echo "**************************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=6 status=600 schemas=\('CHANGE_SPB','FINPAC','FINPAC_CUSTOM','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) INCLUDE=CONSTRAINT,REF_CONSTRAINT,INDEX TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:idx_imp_metadata_RACFINL_MATERA.log METRICS=y
#impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=8 status=600 schemas=\('CHANGE_SPB','FINPAC','FINPAC_CUSTOM','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) REMAP_TABLESPACE=TEMP1:TEMP,TEMP2:TEMP INCLUDE=INDEX TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:idx_imp_metadata_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_index"
TimeStamp
echo " "
}

imp_triggers () {

echo "***************************"
echo " Importing Matera triggers "
echo "***************************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) INCLUDE=TRIGGER CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:triggers_imp_metadata_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_triggers"
TimeStamp
echo " "
}

imp_grants_syns () {

echo "*************************"
echo " Importing Matera Grants "
echo "*************************"
TimeStamp
impdp \"sys\/$ORA_STRING@matera as sysdba\" status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) INCLUDE=GRANT,SYNONYM CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:gs_imp_metadata_RACFINL_MATERA.log METRICS=y
echo " "
echo "Ending function imp_grants_syns"
TimeStamp
echo " "
}

# Main Section

echo "##############################"
echo " "
echo "   Matera migration program   "
echo " "
echo "##############################"

if ( ! getopts "bsrmlwdpitgyceazh" opt); then
	echo "`basename $0`: You must one of these options [-srmlwdpitgyceah]";
	echo "Try ./`basename $0` -h for help information"
	exit $E_OPTERROR;
fi

while getopts bsrmlwdpitgyceazh opt
do
    case "$opt" in
		b)	set_parameters;;
		s)  skeleton_scripts;;
		r)	restart_bcsulcdb;;
		m)	imp_metadata;;
		l)	create_dblinks;;
		w)	put_tbl_rwrite;;
		d)	imp_data;;
		p)	imp_pfvp;;
		i)	imp_index;;
		t)	imp_triggers;;
		g)	imp_grants_syns;;
		y)	create_public_synonyms;;
		c)	recompile;;
		e)	gather_stats;;
		a)	set_parameters
			restart_bcsulcdb
			skeleton_scripts
			restart_bcsulcdb
			imp_metadata
			create_dblinks
			put_tbl_rwrite
			imp_data
			restart_bcsulcdb
			imp_pfvp
			restart_bcsulcdb
			imp_index
			restart_bcsulcdb
			imp_triggers
			#imp_grants_syns
			create_public_synonyms
			recompile
			gather_stats;;
		z)	set_parameters			
			skeleton_scripts
			restart_bcsulcdb
			create_dblinks
			imp_metadata			
			put_tbl_rwrite
			create_public_tbl_synonyms
			create_public_others_synonyms
			imp_pfvp			
			restart_bcsulcdb
			imp_data
			restart_bcsulcdb
			imp_index			
			imp_triggers			
			recompile;;			
		h)	Usage;;
		\?)	echo >&2 "usage: $0 [-v] [-f filename] [file ...]"
			exit 1;;
    esac
done
shift `expr $OPTIND - 1`
echo "##############################################################"
echo " "
echo " All migration tasks was executed " 
TimeStamp
echo " Please review the screen output for any error occurrence."
echo " "
echo "##############################################################"


