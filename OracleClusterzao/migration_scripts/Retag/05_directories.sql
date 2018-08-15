spool create_directories.log

set echo on
set timing on

create or replace directory PUMP_DIR as '/u02/dump';

create or replace directory INSS_LIDO		as '/u02/retag/cpp/dataprev/lido';
create or replace directory INSS_RETORNO	as '/u02/retag/cpp/dataprev/retornado';
create or replace directory INSS_ENVIADO	as '/u02/retag/cpp/dataprev/enviado';
create or replace directory INSS_REMESSA	as '/u02/retag/cpp/dataprev/gerado';

--create or replace directory EXT_DIR as '/u02/temp';
--create or replace directory IMPORT as '/u02/import';

--create or replace directory GLOSA_LIDO		as '/u02/retag/cpp/glosa_lido';
--create or replace directory GLOSA_RETORNO	as '/u02/retag/cpp/glosa';
--create or replace directory TELESAQUE		as '/u02/retag/cartao/dataprev/telesaque';
--create or replace directory BACEN			as '/u02/retag/Bacen';
--create or replace directory ARQUIVO_LIDO	as '/u02/retag/cpp/arquivos/lido';
--create or replace directory ARQUIVO_RETORNO	as '/u02/retag/cpp/arquivos/retorno';
--create or replace directory ARQUIVO_GERADO	as '/u02/retag/cpp/arquivos/gerado';
--create or replace directory ARQUIVO_MARGEM	as '/u02/retag/cpp/arquivos/margem';
--create or replace directory INF_GERENCIAL	as '/u02/retag/cartao/inf_ger';
--create or replace directory OUTBOUND		as '/u02/retag/utl_file/outbound';
--create or replace directory INBOUND			as '/u02/retag/utl_file/inbound';
--create or replace directory CAMPANHA_CPP	as '/u02/retag/cartao/dataprev/campanha_cpp';
--create or replace directory REMESSA_DFS		as '/u02/retag/dfscartao/fidelity/remessa';
--create or replace directory RETORNO_DFS		as '/u02/retag/dfscartao/fidelity/retorno';
--create or replace directory IMP_DIARIO_DFS	as '/u02/retag/dfscartao/dataprev/diario';
--create or replace directory DATAPREV_DFS	as '/u02/retag/dfscartao/dataprev';
--create or replace directory CAMPANHA_DFS	as '/u02/retag/dfscartao/dataprev/campanha';
--create or replace directory DATAPREV		as '/u02/retag/cartao/dataprev';
--create or replace directory SIAPE_LIDO		as '/u02/retag/siape/lido';
--create or replace directory SIAPE_REMESSA	as '/u02/retag/siape/gerado';
--create or replace directory SIAPE_RETORNO	as '/u02/retag/siape/retornado';
--create or replace directory SIAPE_ENVIADO	as '/u02/retag/siape/enviado';
--create or replace directory IMP_DIARIO_TMP	as '/u02/retag/cartao/dataprev/diario/prmonre';
--create or replace directory IMP_PRMONRE		as '/u02/retag/cartao/dataprev/temp';
--create or replace directory EXTERNAL_TABLES	as '/u02/retag/external_tables';
--create or replace directory REMESSA			as '/u02/retag/cartao/fidelity/remessa';
--create or replace directory RETORNO			as '/u02/retag/cartao/fidelity/retorno';
--create or replace directory IMP_DIARIO		as '/u02/retag/cartao/dataprev/diario';
--create or replace directory CAMPANHA		as '/u02/retag/cartao/dataprev/campanha';
--create or replace directory EXTERNAL_RET_PROP	R:/
--create or replace directory INC_124526		R:/BKP_TBLS_124526

-- Grant on sys.DBMS_AQADM

--grant execute on DBMS_AQADM to public;
--grant execute on sys.DBMS_AQADM to public;

spool off