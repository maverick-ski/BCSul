-- -----------------------------------------------------------------------------------
-- File Name    : https://oracle-base.com/dba/script_creation/get_lock_users_account_ddl.sql
-- Author       : Tim Hall
-- Description  : Displays the DDL for a specific user.
-- Call Syntax  : @get_user_ddl (username)
-- Last Modified: 28/01/2006
-- -----------------------------------------------------------------------------------

set long 20000 longchunksize 20000 pagesize 0 linesize 1000 feedback off verify off trimspool on
column ddl format a1000

begin
   dbms_metadata.set_transform_param (dbms_metadata.session_transform, 'SQLTERMINATOR', true);
   dbms_metadata.set_transform_param (dbms_metadata.session_transform, 'PRETTY', true);
end;
/

spool lock_users_account.sql
 
select 'alter user '||a.username||' account lock;' from dba_users a;

spool off

set linesize 80 pagesize 14 feedback on trimspool on verify on