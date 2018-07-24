set head off
set pages 0
set long 9999999
spool user_script.sql

SELECT DBMS_METADATA.GET_DDL('USER', USERNAME) || '/' DDL 
FROM 
   DBA_USERS;

spool off;