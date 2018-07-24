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
echo $USER_STRING | su - oragrid -c "srvctl start database -d bcsulcdb"
sleep 20
echo "*********************"
echo " Starting PDB retag "
echo "*********************"
echo @$SCRIPTS_HOME/open_retag_pdb.sql | sys
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
echo $USER_STRING | su - oragrid -c "srvctl stop database -d bcsulcdb"
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
echo " Creating retag base structure "
echo "********************************"
TimeStamp
echo @$SCRIPTS_HOME/00_main.sql | sysretag
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
echo @$SCRIPTS_HOME/check_tbl_ronly.sql | sysretag
echo " "
echo "Ending function put_tbl_rwrite" 
TimeStamp
echo " "
}

set_parameters () {

echo "**********************************"
echo " Setting retag spfile parameters "
echo "**********************************"
TimeStamp
echo @$SCRIPTS_HOME/set_parameters.sql | sysretag
echo " "
echo "Ending function set_parameters"
TimeStamp
echo " "
}

create_all_public_synonyms () {

echo "**********************************"
echo " Creating retag public synonyms  "
echo "**********************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_synonyms.sql | sysretag
echo " "
echo "Ending function create_public_synonyms"
TimeStamp
echo " "
}

create_public_tbl_synonyms () {

echo "*****************************************"
echo " Creating retag public tables synonyms  "
echo "*****************************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_tbl_synonyms.sql | sysretag
echo " "
echo "Ending function create_public_tbl_synonyms"
TimeStamp
echo " "
}

create_public_others_synonyms () {

echo "*****************************************"
echo " Creating retag others public synonyms  "
echo "*****************************************"
TimeStamp
echo @$SCRIPTS_HOME/create_public_others_synonyms.sql | sysretag
echo " "
echo "Ending function create_public_others_synonyms"
TimeStamp
echo " "
}

add_constraints () {

echo "***********************************************"
echo " Adding retag Constraints and REF Constraints "
echo "***********************************************"
TimeStamp
echo @$SCRIPTS_HOME/add_constraints.sql | sysretag
echo " "
echo "Ending function add_constraints"
TimeStamp
echo " "
}

recompile () {

echo "***************************"
echo " Recompile retag objects  "
echo "***************************"
TimeStamp
echo @$SCRIPTS_HOME/recompile.sql | sysretag
echo " "
echo "Ending function recompile"
TimeStamp
echo " "
}

gather_stats () {

echo "******************************"
echo " Gathering retag statistics  "
echo "******************************"
TimeStamp
echo @$SCRIPTS_HOME/gather_stats.sql | sysretag
echo " "
echo "Ending function gather_stats"
TimeStamp
echo " "
}

create_dblinks () {

echo "**************************"
echo " Creating retag dblinks  "
echo "**************************"
TimeStamp
echo @$SCRIPTS_HOME/create_dblinks.sql | sysretag
echo " "
echo "Ending function create_dblinks"
TimeStamp
echo " "
}

imp_metadata_full () {

echo "**************************************************************************************"
echo " Importing retag metadata excluding CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,TRIGGERS "
echo "**************************************************************************************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) REMAP_TABLESPACE=TEMPORARY:TEMP EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,TRIGGER TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:metadata_imp_retag.log METRICS=y
echo " "
echo "Ending function imp_metadata_full"
TimeStamp
echo " "
}

imp_metadata () {

echo "***************************"
echo " Importing retag metadata "
echo "***************************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" parallel=8 status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) REMAP_TABLESPACE=TEMPORARY:TEMP EXCLUDE=CONSTRAINT,REF_CONSTRAINT,DB_LINK,INDEX,VIEW,PROCEDURE,FUNCTION,TRIGGER,PACKAGE,PACKAGE_BODY TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:metadata_imp_retag.log METRICS=y
echo " "
echo "Ending function imp_metadata"
TimeStamp
echo " "
}

imp_data () {

echo "***********************"
echo " Importing retag data "
echo "***********************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" parallel=8 status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) CONTENT=DATA_ONLY TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y TABLE_EXISTS_ACTION=APPEND directory=PUMP_DIR dumpfile=RACRET_DATA_01.DMP, RACRET_DATA_02.DMP, RACRET_DATA_03.DMP, RACRET_DATA_04.DMP,RACRET_DATA_05.DMP,RACRET_DATA_06.DMP,RACRET_DATA_07.DMP,RACRET_DATA_08.DMP logfile=PUMP_DIR:data_imp_retag.log METRICS=y
echo " "
echo "Ending function imp_data"
TimeStamp
echo " "
}

imp_pfvp () {

echo "***********************"
echo " Importing retag PFVP "
echo "***********************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) INCLUDE=VIEW,PROCEDURE,FUNCTION,PACKAGE,PACKAGE_BODY CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:pfvp_imp_metadata_retag.log METRICS=y
echo " "
echo "Ending function imp_pfvp"
TimeStamp
echo " "
}

imp_index () {

echo "**************************"
echo " Importing retag indexes "
echo "**************************"
TimeStamp
#impdp \"sys\/$ORA_STRING@retag as sysdba\" parallel=8 status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) REMAP_TABLESPACE=TEMP1:TEMP,TEMP2:TEMP INCLUDE=CONSTRAINT,REF_CONSTRAINT,INDEX TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:idx_imp_metadata_RACFINL_retag.log METRICS=y
impdp \"sys\/$ORA_STRING@retag as sysdba\" parallel=8 status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) REMAP_TABLESPACE=TEMPORARY:TEMP INCLUDE=INDEX TRANSFORM=DISABLE_ARCHIVE_LOGGING:Y directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:idx_imp_metadata_retag.log METRICS=y
echo " "
echo "Ending function imp_index"
TimeStamp
echo " "
}

imp_triggers () {

echo "***************************"
echo " Importing retag triggers "
echo "***************************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) INCLUDE=TRIGGER CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:triggers_imp_metadata_retag.log METRICS=y
echo " "
echo "Ending function imp_triggers"
TimeStamp
echo " "
}

imp_grants_syns () {

echo "*************************"
echo " Importing retag Grants "
echo "*************************"
TimeStamp
impdp \"sys\/$ORA_STRING@retag as sysdba\" status=600 schemas=\('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','SUPORTERJ','TOOLS','SCPTOOLS'\) INCLUDE=GRANT,SYNONYM CLUSTER=NO directory=PUMP_DIR dumpfile=METADATA_RACRET_01.DMP logfile=PUMP_DIR:gs_imp_metadata_retag.log METRICS=y
echo " "
echo "Ending function imp_grants_syns"
TimeStamp
echo " "
}

# Main Section

echo "##############################"
echo " "
echo "   retag migration program   "
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
			imp_metadata
			create_dblinks
			put_tbl_rwrite
			create_public_tbl_synonyms
			create_public_others_synonyms
			imp_pfvp			
			restart_bcsulcdb
			imp_data
			restart_bcsulcdb
			imp_index
			add_constraints
			imp_triggers;;			
			#recompile;;			
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


