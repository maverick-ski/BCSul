spool create_directories.log

set echo on
set timing on

create or replace directory ARQUIVOS_DIR as '/u02/temp';
create or replace directory LOG_CONTABIL as '/u02/log_contabil';
create or replace directory PRC_INTEGRA_CONTABIL as '/u02/prc_integra_contabil';
create or replace directory CENTRAL_RISCO as '/u02/central_risco';
create or replace directory IMPORT as '/u02/import';
create or replace directory PRICE as '/u02/price';
create or replace directory PUMP_DIR as '/u02/dump';
create or replace directory EXT_DIR as '/u02/temp';

-- Grant on sys.DBMS_AQADM

grant execute on DBMS_AQADM to public;
grant execute on sys.DBMS_AQADM to public;

spool off