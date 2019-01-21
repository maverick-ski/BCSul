set pages 0 line 150 feedback off trim on
spool put_tbl_rwrite_on.sql

select 'alter table '||a.owner||'.'||a.table_name||' READ WRITE;' from dba_tables a where a.OWNER in ('ATENDIMENTO','BCSUL','BDD','BDD_HOMOLOG','CONCILIACAO_DB','DBLINK_RACFINL_OU_FINHOMO11G','DBLINK_TOOLSH','DBL_BI_ODI','EXCEL','IFRS_USER','INTEGRADOR','INTEGRADOR_JOBS','LK_BIRAC_IFRS','LK_C3_TOOLS','LK_COMISSAOH','LK_IFRS_SCCTOOLS','LK_MIS','LK_MIS_TOOLS','LK_RISCO','LK_SUPORTE_TI','LK_TOOLSPP','LK_TOOLS_BACEN','LK_TOOLS_C3','LK_TOOLS_C3PROD','MONITORIA','MONITORIA_CONTINGENCIA','NETBACKUP','ODI','RAET_INQUERITO','RENT','R_STATS','SCC3533','SCCJUN','SCQ_HOMOLOG','SISTESPROD','SI_INFORMTN_SCHEMA','TOOLS','TRIBUTOSMIU') and a.read_only = 'YES' order by owner;

spool off;

set pages 999 feedback on timing on echo on
spool put_tbl_rwrite_on.log

@@put_tbl_rwrite_on.sql

spool off;

