#!/bin/bash

shopt -s expand_aliases
source /home/oracle/.bash_profile
source .params

TimeStamp () {

TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`
echo "AT $TIMESTAMP"

}

start_matera () {

echo "**************************"
echo " Starting Instance MATERA "
echo "**************************"
TimeStamp
echo @$SCRIPTS_HOME/startup_matera_11g.sql | sysmatera
sleep 20
echo " "
echo "Ending function start_matera"
TimeStamp
echo " "
}

stop_matera () {

echo "*************************"
echo " Stoping Instance MATERA "
echo "*************************"
TimeStamp
echo @$SCRIPTS_HOME/shutdown_matera_11g.sql | sysmatera
sleep 20
echo " "
echo "Ending function stop_matera" 
TimeStamp
echo " "
}

restart_matera () {

stop_matera
start_matera

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
echo @$SCRIPTS_HOME/set_11g_parameters.sql | sysmatera
echo " "
echo "Ending function set_parameters"
TimeStamp
echo " "
}

reset_parameters () {

echo "************************************"
echo " Resetting Matera spfile parameters "
echo "************************************"
TimeStamp
echo @$SCRIPTS_HOME/reset_11g_parameters.sql | sysmatera
echo " "
echo "Ending function reset_parameters"
TimeStamp
echo " "
}

setShared_pool () {

echo "*******************************"
echo " Setting Shared_pool in memory "
echo "*******************************"
TimeStamp
echo @$SCRIPTS_HOME/setShared_pool.sql | sysmatera
echo " "
echo "Ending function setShared_pool"
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

extra_grants () {

echo "**********************"
echo " Granting permissions "
echo "**********************"
TimeStamp
echo @$SCRIPTS_HOME/extra_grants.sql | sysmatera
echo " "
echo "Ending function extra_grants"
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

gather_app_stats () {

echo "*************************************"
echo " Gathering Matera Schema statistics  "
echo "*************************************"
TimeStamp
echo @$SCRIPTS_HOME/gather_app_stats.sql | sysmatera
echo " "
echo "Ending function gather_app_stats"
TimeStamp
echo " "
}

gather_dict_stats () {

echo "**********************************"
echo " Gathering Dictionary statistics  "
echo "**********************************"
TimeStamp
echo @$SCRIPTS_HOME/gather_dict_stats.sql | sysmatera
echo " "
echo "Ending function gather_dict_stats"
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
impdp \"sys\/$ORA_STRING@matera as sysdba\" status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) REMAP_TABLESPACE=TEMP1:TEMP,TEMP2:TEMP,USERS:USER_DATA EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,TRIGGER TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:metadata_imp_RACFINL_MATERA.log METRICS=y
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
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=8 status=600 schemas=\('BCSULRISCOM_JOBS','BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','PANDATA_JOBS','SDBANCO','SDBANCO_JOBS','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) REMAP_TABLESPACE=TEMP1:TEMP,TEMP2:TEMP,USERS:USER_DATA EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,VIEW,PROCEDURE,FUNCTION,TRIGGER,PACKAGE,PACKAGE_BODY directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:metadata_imp_RACFINL_MATERA.log METRICS=y
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
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=8 status=600 schemas=\('CHANGE_SPB','FINPAC','FINPAC_CUSTOM','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) CONTENT=DATA_ONLY TABLE_EXISTS_ACTION=APPEND directory=PUMP_DIR dumpfile=RACFINL_MATERA_DATA_01.DMP, RACFINL_MATERA_DATA_02.DMP, RACFINL_MATERA_DATA_03.DMP, RACFINL_MATERA_DATA_04.DMP,RACFINL_MATERA_DATA_05.DMP,RACFINL_MATERA_DATA_06.DMP,RACFINL_MATERA_DATA_07.DMP,RACFINL_MATERA_DATA_08.DMP logfile=PUMP_DIR:data_imp_RACFINL_MATERA.log METRICS=y
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
impdp \"sys\/$ORA_STRING@matera as sysdba\" status=600 schemas=\('BCSULVIRTUAL_JOBS','CHANGE_SPB','EXTRATO','FINPAC','FINPAC_CUSTOM','FINPAC_JOBS','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) INCLUDE=VIEW,PROCEDURE,FUNCTION,PACKAGE,PACKAGE_BODY CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:pfvp_imp_metadata_RACFINL_MATERA.log METRICS=y
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
impdp \"sys\/$ORA_STRING@matera as sysdba\" parallel=8 status=600 schemas=\('CHANGE_SPB','FINPAC','FINPAC_CUSTOM','FRAMEWORK','MIDDLE','PANDATA','SDBANCO','SDIMIO','SCA','SPB_BRIDGE','SUPORTERJ'\) REMAP_TABLESPACE=TEMP1:TEMP,TEMP2:TEMP INCLUDE=CONSTRAINT,REF_CONSTRAINT,INDEX directory=PUMP_DIR dumpfile=METADATA_RACFINL_MATERA_01.DMP logfile=PUMP_DIR:idx_imp_metadata_RACFINL_MATERA.log METRICS=y
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
		r)	restart_matera;;
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
		e)	gather_app_stats;;
		a)	set_parameters
			restart_matera
			skeleton_scripts
			restart_matera
			imp_metadata
			create_dblinks
			put_tbl_rwrite
			imp_data
			restart_matera
			imp_pfvp
			restart_matera
			imp_index
			restart_matera
			imp_triggers
			#imp_grants_syns
			create_public_synonyms
			recompile
			gather_stats;;
		z)	set_parameters			
			skeleton_scripts
			restart_matera
			setShared_pool
			imp_metadata
			extra_grants
			create_dblinks
			put_tbl_rwrite
			create_public_tbl_synonyms
			create_public_others_synonyms
			imp_pfvp			
			restart_matera
			imp_data
			restart_matera
			imp_index			
			imp_triggers
			gather_dict_stats
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


