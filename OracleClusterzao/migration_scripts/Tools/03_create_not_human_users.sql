spool not_human_USER_DATA.log
set echo on

CREATE PROFILE "USUARIOS" LIMIT COMPOSITE_LIMIT DEFAULT SESSIONS_PER_USER DEFAULT CPU_PER_SESSION DEFAULT CPU_PER_CALL DEFAULT LOGICAL_READS_PER_SESSION DEFAULT LOGICAL_READS_PER_CALL DEFAULT IDLE_TIME DEFAULT CONNECT_TIME DEFAULT PRIVATE_SGA DEFAULT FAILED_LOGIN_ATTEMPTS 10 PASSWORD_LIFE_TIME UNLIMITED PASSWORD_REUSE_TIME 155520000/86400 PASSWORD_REUSE_MAX 3 PASSWORD_VERIFY_FUNCTION "VERIFY_FUNCTION" PASSWORD_LOCK_TIME DEFAULT PASSWORD_GRACE_TIME 864000/86400 ;

CREATE USER "ATENDIMENTO" IDENTIFIED BY VALUES '80549521D2EBF30D'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "AVERB" IDENTIFIED BY VALUES 'D3803CDE2DD76887' DEFAULT TABLESPACE "AVERBACAO" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "AVERB_JOBS" IDENTIFIED BY VALUES '80A73D7C73EB64B0' DEFAULT TABLESPACE "AVERBACAO" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "BCSUL" IDENTIFIED BY VALUES '1893B0D5B9885D09'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "BDD" IDENTIFIED BY VALUES '20AE1E8ACCAF708E'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "BDD_HOMOLOG" IDENTIFIED BY VALUES '56D02050B392C6D2'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "CI" IDENTIFIED BY VALUES 'D3471995F0A0FC7D' DEFAULT TABLESPACE "SCCTOOLSD" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "CONCILIACAO_DB" IDENTIFIED BY VALUES '4829C0E43B6114DF'   DEFAULT TABLESPACE "CONCILIACAO_DB"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "DBL_BI_ODI" IDENTIFIED BY VALUES '7AE8B31AFECA8B93'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "DBLINK_TOOLSH" IDENTIFIED BY VALUES '020A1336486CE44C'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "EXCEL" IDENTIFIED BY VALUES 'FA2AF7A71A0BB586'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   PROFILE "USUARIOS";
CREATE USER "FIX_FECH" IDENTIFIED BY VALUES 'F1C4FDF0A542FF4A' DEFAULT TABLESPACE "SCCTOOLSD" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "IFRS_USER" IDENTIFIED BY VALUES 'F430A09C37276E3F'   DEFAULT TABLESPACE "TBS_IFRS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "INTEGRADOR" IDENTIFIED BY VALUES '387B62FED9F51EA1'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "INTEGRADOR_JOBS" IDENTIFIED BY VALUES 'E6E9A6C764F56203'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_BIRAC_IFRS" IDENTIFIED BY VALUES '847426A23A4F5974'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_C3_TOOLS" IDENTIFIED BY VALUES 'EDE97ECD7A1BDD12'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_COMISSAOH" IDENTIFIED BY VALUES '691C417B751F87EB'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_IFRS_SCCTOOLS" IDENTIFIED BY VALUES '7C37F75B29BEB856'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_MIS" IDENTIFIED BY VALUES 'B754F590D9A5FE9E'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_MIS_TOOLS" IDENTIFIED BY VALUES 'F8628DD6BE6435EA'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_RISCO" IDENTIFIED BY VALUES 'A154A6DB27162069'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_SUPORTE_TI" IDENTIFIED BY VALUES '6650045AD5945D6F'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_BACEN" IDENTIFIED BY VALUES '25D772FA49C394B2'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_C3" IDENTIFIED BY VALUES '876E90DD95C47418'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_C3PROD" IDENTIFIED BY VALUES '3C95BA7EC7D9FC4A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLSPP" IDENTIFIED BY VALUES '1BD169DA5A882451'   DEFAULT TABLESPACE "SCCTOOLSD"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "MONITORIA" IDENTIFIED BY VALUES 'E804567AD6ACF96D' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "MONITORIA_CONTINGENCIA" IDENTIFIED BY VALUES 'BD016B8A4CB7FDB3'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "NETBACKUP" IDENTIFIED BY VALUES '9DBA906975B4978B' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "ODI" IDENTIFIED BY VALUES '3732FA8064569EF5'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "ODI_TMP" IDENTIFIED BY VALUES 'EF7AE3DF2DA79E97' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "R_STATS" IDENTIFIED BY VALUES '3C208D3E53C9222A'   DEFAULT TABLESPACE "SCCTOOLSD"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "RAET_INQUERITO" IDENTIFIED BY VALUES '8F0D3A6050FE77C8'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "RENT" IDENTIFIED BY VALUES '3366B910EE93E527'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SCC3533" IDENTIFIED BY VALUES '6909D86E4FE33347'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SCCJUN" IDENTIFIED BY VALUES 'EAEBD71C0B20ECC6'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "SCCTOOLS" IDENTIFIED BY VALUES 'A70360A5CC8A72BD' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SCCTOOLS_JOBS" IDENTIFIED BY VALUES '5515E21239A35910' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SCQ_HOMOLOG" IDENTIFIED BY VALUES 'C9986123FC66FE7A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SISTESPROD" IDENTIFIED BY VALUES 'BAFB452C3B77F06A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SQL_GERENCIAL" IDENTIFIED BY VALUES 'EF100E3FBAD4A1A5' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SQLGERENCIAL" IDENTIFIED BY VALUES 'F4B9D4DD8FC3D5A6' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SUPORTERJ" IDENTIFIED BY VALUES 'C893884F01CC52CA' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SUPORTERJ_JOBS" IDENTIFIED BY VALUES '8A8676F5CCD3F0AB' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";
CREATE USER "TOOLS" IDENTIFIED BY VALUES '600D87F56436C2C0'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "TRIBUTOSMIU" IDENTIFIED BY VALUES '3FC328972CEC1E03'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "ZABBIX" IDENTIFIED BY VALUES '9A31F4B8D0743A01' TEMPORARY TABLESPACE "TEMP01";
CREATE USER "DBLINK_RACFINL_OU_FINHOMO11G" IDENTIFIED BY VALUES 'D48440E96FBAE638'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";

ALTER USER "ATENDIMENTO" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "AVERB" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "AVERB_JOBS" DEFAULT ROLE ALL;
ALTER USER "BCSUL" DEFAULT ROLE "CONNECT", "QUEST_SL_SQLAB_ROLE";
ALTER USER "BDD" DEFAULT ROLE ALL;
ALTER USER "BDD_HOMOLOG" DEFAULT ROLE ALL;
ALTER USER "CI" DEFAULT ROLE ALL;
ALTER USER "CONCILIACAO_DB" DEFAULT ROLE ALL;
ALTER USER "DBL_BI_ODI" DEFAULT ROLE ALL;
ALTER USER "DBLINK_RACFINL_OU_FINHOMO11G" DEFAULT ROLE ALL;
ALTER USER "INTEGRADOR" DEFAULT ROLE ALL;
ALTER USER "INTEGRADOR_JOBS" DEFAULT ROLE ALL;
ALTER USER "LK_BIRAC_IFRS" DEFAULT ROLE ALL;
ALTER USER "LK_C3_TOOLS" DEFAULT ROLE ALL;
ALTER USER "LK_IFRS_SCCTOOLS" DEFAULT ROLE ALL;
ALTER USER "LK_MIS" DEFAULT ROLE ALL;
ALTER USER "LK_MIS_TOOLS" DEFAULT ROLE ALL;
ALTER USER "LK_RISCO" DEFAULT ROLE ALL;
ALTER USER "MONITORIA" DEFAULT ROLE ALL;
ALTER USER "MONITORIA_CONTINGENCIA" DEFAULT ROLE ALL;
ALTER USER "NETBACKUP" DEFAULT ROLE ALL;
ALTER USER "ODI" DEFAULT ROLE ALL;
ALTER USER "ODI_TMP" DEFAULT ROLE ALL;
ALTER USER "R_STATS" DEFAULT ROLE ALL;
ALTER USER "RAET_INQUERITO" DEFAULT ROLE ALL;
ALTER USER "RENT" DEFAULT ROLE ALL;
ALTER USER "SCCJUN" DEFAULT ROLE ALL;
ALTER USER "SCCTOOLS" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "SCCTOOLS_JOBS" DEFAULT ROLE ALL;
ALTER USER "SCQ_HOMOLOG" DEFAULT ROLE ALL;
ALTER USER "SISTESPROD" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "SQL_GERENCIAL" DEFAULT ROLE ALL;
ALTER USER "SUPORTERJ" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "SUPORTERJ_JOBS" DEFAULT ROLE ALL;
ALTER USER "TOOLS" DEFAULT ROLE "CONNECT", "RESOURCE", "QUEST_SL_SQLAB_ROLE";
ALTER USER "ZABBIX" DEFAULT ROLE ALL;

spool off