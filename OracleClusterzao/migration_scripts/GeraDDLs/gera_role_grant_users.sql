set head off
set pages 0
set long 9999999
spool role_grant_script.sql

SELECT DBMS_METADATA.GET_GRANTED_DDL('ROLE_GRANT', USERNAME) || '/' DDL
FROM 
   DBA_USERS;

spool off