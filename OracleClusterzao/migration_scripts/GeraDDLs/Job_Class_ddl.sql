-- -----------------------------------------------------------------------------------
-- File Name    : Job_Class_ddl.sql
-- Author       : Pierre Ribeiro
-- Description  : Creates the DDL for JOB CLASS.
-- Call Syntax  : @Job_Class_ddl.sql
-- Last Modified: 
-- -----------------------------------------------------------------------------------
SET LONG 20000 LONGCHUNKSIZE 20000 PAGESIZE 0 LINESIZE 1000 FEEDBACK OFF VERIFY OFF TRIMSPOOL ON

BEGIN
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'SQLTERMINATOR', true);
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'PRETTY', true);
END;
/

spool create_Job_Class_ddl.sql

select dbms_metadata.get_ddl('PROCOBJ','JOBS_FINPAC3') from dual;

spool off

SET PAGESIZE 14 FEEDBACK ON VERIFY ON