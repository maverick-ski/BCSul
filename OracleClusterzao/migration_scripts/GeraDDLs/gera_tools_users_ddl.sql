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

declare
   type array_t is table of varchar2(256);
   array array_t := array_t('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU');
   varray varchar2(100);
   vUSER varchar2(2000);
   vROLE_GRANT varchar2(2000);
   vSYSTEM_GRANT varchar2(2000);
begin
   for i in 1..array.count loop
       varray:=array(i);
      select dbms_metadata.get_ddl('USER', u.username) AS ddl
      into vUSER
      from   dba_users u
      where  u.username = varray;
   dbms_output.put_line (vUSER);

      select dbms_metadata.get_granted_ddl('ROLE_GRANT', rp.grantee) AS ddl
      into vROLE_GRANT
      from   dba_role_privs rp
      where  rp.grantee = varray;
   dbms_output.put_line (vROLE_GRANT);

      select dbms_metadata.get_granted_ddl('SYSTEM_GRANT', sp.grantee) AS ddl
      into vSYSTEM_GRANT
      from   dba_sys_privs sp
      where  sp.grantee = varray;
   dbms_output.put_line (vSYSTEM_GRANT);

   end loop;   
end;







/
select dbms_metadata.get_granted_ddl('OBJECT_GRANT', tp.grantee) AS ddl
from   dba_tab_privs tp
where  tp.grantee in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU')
/
select dbms_metadata.get_granted_ddl('DEFAULT_ROLE', rp.grantee) AS ddl
from   dba_role_privs rp
where  rp.grantee in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU')
and    rp.default_role = 'YES'
/
select to_clob('/* Start profile creation script in case they are missing') AS ddl
from   dba_users u
where  u.username in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU')
and    u.profile <> 'DEFAULT'
/
select dbms_metadata.get_ddl('PROFILE', u.profile) AS ddl
from   dba_users u
where  u.username in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU')
and    u.profile <> 'DEFAULT'
/
select to_clob('End profile creation script */') AS ddl
from   dba_users u
where  u.username in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU')
and    u.profile <> 'DEFAULT'
/

spool off

set linesize 80 pagesize 14 feedback on trimspool on verify on