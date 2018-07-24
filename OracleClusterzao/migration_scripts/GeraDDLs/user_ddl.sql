-- -----------------------------------------------------------------------------------
-- File Name    : https://oracle-base.com/dba/script_creation/get_user_ddl.sql
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

spool create_user_ddl.sql
 
select dbms_metadata.get_granted_ddl('ROLE_GRANT', rp.grantee) AS ddl
from   dba_role_privs rp
where  rp.grantee in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    rownum = 1
union all
select dbms_metadata.get_granted_ddl('SYSTEM_GRANT', sp.grantee) AS ddl
from   dba_sys_privs sp
where  sp.grantee in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    rownum = 1
union all
select dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee) AS ddl
from   dba_tab_privs tp
where  tp.grantee in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    rownum = 1
union all
select dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee) AS ddl
from   dba_role_privs rp
where  rp.grantee in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    rp.default_role = 'YES'
and    rownum = 1
union all
select to_clob('/* Start profile creation script in case they are missing') AS ddl
from   dba_users u
where  u.username in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    u.profile <> 'DEFAULT'
and    rownum = 1
union all
select dbms_metadata.get_ddl('PROFILE', u.profile) AS ddl
from   dba_users u
where  u.username in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    u.profile <> 'DEFAULT'
union all
select to_clob('End profile creation script */') AS ddl
from   dba_users u
where  u.username in ('CARTAO','DBL_BI_ODI','DBLINK_TOOLSH','DBLINK_FINHOMO11G','LK_MIS','LK_CARTAO','LK_CONSIG','LK_MIS_RETAG','LK_SUPORTE_TI','LK_CARTAO_BINOVO','NETBACKUP','RETAGUARDA','RETAG_INSS','RETAGUARDA_JOBS','SCA','SCPTOOLS','SCPTOOLS1','SUPORTERJ','TOOLS')
and    u.profile <> 'DEFAULT'
and    rownum = 1
/

spool off

set linesize 80 pagesize 14 feedback on trimspool on verify on