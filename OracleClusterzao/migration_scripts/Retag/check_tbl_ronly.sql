set pages 0 line 150 feedback off trim on
spool put_tbl_rwrite_on.sql

select 'alter table '||a.owner||'.'||a.table_name||' READ WRITE;' from dba_tables a where a.OWNER in ('RETAGUARDA','RETAGUARDA_JOBS','RETAG_INSS','RETAG_INSS_JOBS','SUPORTERJ','TOOLS','SCPTOOLS') and a.read_only = 'YES' order by owner;

spool off;

set pages 999 feedback on timing on echo on
spool put_tbl_rwrite_on.log

@@put_tbl_rwrite_on.sql

spool off;

