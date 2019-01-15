spool not_human_USER_DATA.log
set echo on

CREATE PROFILE "USUARIOS" LIMIT COMPOSITE_LIMIT DEFAULT SESSIONS_PER_USER DEFAULT CPU_PER_SESSION DEFAULT CPU_PER_CALL DEFAULT LOGICAL_READS_PER_SESSION DEFAULT LOGICAL_READS_PER_CALL DEFAULT IDLE_TIME DEFAULT CONNECT_TIME DEFAULT PRIVATE_SGA DEFAULT FAILED_LOGIN_ATTEMPTS 10 PASSWORD_LIFE_TIME UNLIMITED PASSWORD_REUSE_TIME 155520000/86400 PASSWORD_REUSE_MAX 3 PASSWORD_VERIFY_FUNCTION "VERIFY_FUNCTION" PASSWORD_LOCK_TIME DEFAULT PASSWORD_GRACE_TIME 864000/86400 ;

CREATE USER "CONCILIACAO_DB" IDENTIFIED BY VALUES '4829C0E43B6114DF'   DEFAULT TABLESPACE "CONCILIACAO_DB"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "IFRS_USER" IDENTIFIED BY VALUES 'F430A09C37276E3F'   DEFAULT TABLESPACE "TBS_IFRS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "R_STATS" IDENTIFIED BY VALUES '3C208D3E53C9222A'   DEFAULT TABLESPACE "SCCTOOLSD"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLSPP" IDENTIFIED BY VALUES '1BD169DA5A882451'   DEFAULT TABLESPACE "SCCTOOLSD"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "EXCEL" IDENTIFIED BY VALUES 'FA2AF7A71A0BB586'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   PROFILE "USUARIOS";
CREATE USER "SCC3533" IDENTIFIED BY VALUES '6909D86E4FE33347'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_C3_TOOLS" IDENTIFIED BY VALUES 'EDE97ECD7A1BDD12'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "INTEGRADOR_JOBS" IDENTIFIED BY VALUES 'E6E9A6C764F56203'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_C3PROD" IDENTIFIED BY VALUES '3C95BA7EC7D9FC4A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "BCSUL" IDENTIFIED BY VALUES '1893B0D5B9885D09'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SCQ_HOMOLOG" IDENTIFIED BY VALUES 'C9986123FC66FE7A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_MIS" IDENTIFIED BY VALUES 'B754F590D9A5FE9E'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_C3" IDENTIFIED BY VALUES '876E90DD95C47418'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "DBLINK_RACFINL_OU_FINHOMO11G" IDENTIFIED BY VALUES 'D48440E96FBAE638'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "ATENDIMENTO" IDENTIFIED BY VALUES '80549521D2EBF30D'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "RENT" IDENTIFIED BY VALUES '3366B910EE93E527'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_COMISSAOH" IDENTIFIED BY VALUES '691C417B751F87EB'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "TRIBUTOSMIU" IDENTIFIED BY VALUES '3FC328972CEC1E03'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_BIRAC_IFRS" IDENTIFIED BY VALUES '847426A23A4F5974'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "RAET_INQUERITO" IDENTIFIED BY VALUES '8F0D3A6050FE77C8'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_TOOLS_BACEN" IDENTIFIED BY VALUES '25D772FA49C394B2'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "MONITORIA_CONTINGENCIA" IDENTIFIED BY VALUES 'BD016B8A4CB7FDB3'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "INTEGRADOR" IDENTIFIED BY VALUES '387B62FED9F51EA1'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_IFRS_SCCTOOLS" IDENTIFIED BY VALUES '7C37F75B29BEB856'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_RISCO" IDENTIFIED BY VALUES 'A154A6DB27162069'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "DBLINK_TOOLSH" IDENTIFIED BY VALUES '020A1336486CE44C'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_MIS_TOOLS" IDENTIFIED BY VALUES 'F8628DD6BE6435EA'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "NETBACKUP" IDENTIFIED BY VALUES '9DBA906975B4978B'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "SISTESPROD" IDENTIFIED BY VALUES 'BAFB452C3B77F06A'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "LK_SUPORTE_TI" IDENTIFIED BY VALUES '6650045AD5945D6F'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "ODI" IDENTIFIED BY VALUES '3732FA8064569EF5'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01";
CREATE USER "DBL_BI_ODI" IDENTIFIED BY VALUES '7AE8B31AFECA8B93'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "SCCJUN" IDENTIFIED BY VALUES 'EAEBD71C0B20ECC6'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "TOOLS" IDENTIFIED BY VALUES '600D87F56436C2C0'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "BDD" IDENTIFIED BY VALUES '20AE1E8ACCAF708E'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "BDD_HOMOLOG" IDENTIFIED BY VALUES '56D02050B392C6D2'   DEFAULT TABLESPACE "USERS"   TEMPORARY TABLESPACE "TEMP01"   ACCOUNT LOCK;
CREATE USER "MONITORIA" IDENTIFIED BY VALUES 'E804567AD6ACF96D' DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP01";

ALTER USER "SCCJUN" DEFAULT ROLE ALL;

spool off