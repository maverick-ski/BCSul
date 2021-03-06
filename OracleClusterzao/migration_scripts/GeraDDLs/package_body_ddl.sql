-- -----------------------------------------------------------------------------------
-- File Name    : package_body_ddl.sql
-- Author       : Pierre Ribeiro
-- Description  : Creates the DDL for public synonyms.
-- Call Syntax  : @package_body_ddl.sql
-- Last Modified: 
-- -----------------------------------------------------------------------------------
SET LONG 20000 LONGCHUNKSIZE 20000 PAGESIZE 0 LINESIZE 1000 FEEDBACK OFF VERIFY OFF TRIMSPOOL ON

BEGIN
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'SQLTERMINATOR', true);
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'PRETTY', true);
END;
/

spool create_package_body_ddl.sql

SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PBCAUDITORIABACEN','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PBCCENRISSISEXTCRED','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PBCPOSITREMESSA','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PCENOSSAREMESSACHEQUESSC','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PCOBINTERFACECNABBCOCORRESP','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','PEMINTERFACECOBRANCA','SDBANCO') FROM DUAL;
SELECT DBMS_METADATA.GET_DDL('PACKAGE_BODY','POPTIPOCALCULO8','SDBANCO') FROM DUAL;

spool off

SET PAGESIZE 14 FEEDBACK ON VERIFY ON