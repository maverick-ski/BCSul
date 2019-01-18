spool create_directories.log

set echo on
set timing on

create or replace directory IMPORT as '/u02/import';
create or replace directory PUMP_DIR as '/u02/dump';
create or replace directory EXT_DIR as '/u02/temp';
create or replace directory EXT_TABLE					as '/u02/dump';
create or replace directory EXPDP						as '/u02/dump';
create or replace directory EXPORT						as '/u02/dump';
create or replace directory DBA_PROD					as '/u02/dump';

create or replace directory BOL_ASS_RET					as '/u02/tools/etl_bi/etl/bol_ass_ret'
create or replace directory BOL_ASS_REM_PROCESSADOS		as '/u02/tools/etl_bi/etl/bol_ass_rem/processados'
create or replace directory BOL_ASS_REM_ERRO			as '/u02/tools/etl_bi/etl/bol_ass_rem/erro'
create or replace directory BOL_ASS_REM					as '/u02/tools/etl_bi/etl/bol_ass_rem'
create or replace directory COB_CNAB_RET_PROCESSADOS	as '/u02/tools/etl_bi/etl/cob_cnab_ret/processados'
create or replace directory COB_CNAB_RET_ERRO			as '/u02/tools/etl_bi/etl/cob_cnab_ret/erro'
create or replace directory COB_CNAB_RET				as '/u02/tools/etl_bi/etl/cob_cnab_ret'
create or replace directory COB_CNAB_REM_PROCESSADOS	as '/u02/tools/etl_bi/etl/cob_cnab_rem/processados'
create or replace directory COB_CNAB_REM_ERRO			as '/u02/tools/etl_bi/etl/cob_cnab_rem/erro'
create or replace directory COB_CNAB_REM				as '/u02/tools/etl_bi/etl/cob_cnab_rem'
create or replace directory COB_CIP_RET					as '/u02/tools/etl_bi/etl/cob_cip_ret'
create or replace directory COB_CIP_RET_ERRO			as '/u02/tools/etl_bi/etl/cob_cip_ret/erro'
create or replace directory COB_CIP_RET_PROCESSADOS		as '/u02/tools/etl_bi/etl/cob_cip_ret/processados'
create or replace directory HQUIT_ASS_RET				as '/u02/tools/etl_bi/etl/hquit_ass_ret'
create or replace directory QUIT_ASS_RET				as '/u02/tools/etl_bi/etl/quit_ass_ret'
create or replace directory QUIT_ASS_REM				as '/u02/tools/etl_bi/etl/quit_ass_rem'
create or replace directory QUIT_ASS_REM_ERRO			as '/u02/tools/etl_bi/etl/quit_ass_rem/erro'
create or replace directory QUIT_ASS_REM_PROCESSADOS	as '/u02/tools/etl_bi/etl/quit_ass_rem/processados'
create or replace directory HQUIT_ASS_REM_PROCESSADOS	as '/u02/tools/etl_bi/etl/hquit_ass_rem/processados'
create or replace directory HQUIT_ASS_REM_ERRO			as '/u02/tools/etl_bi/etl/hquit_ass_rem/erro'
create or replace directory HQUIT_ASS_REM				as '/u02/tools/etl_bi/etl/hquit_ass_rem'
create or replace directory HCOB_RET					as '/u02/tools/etl_bi/etl/hcob_ret'
create or replace directory HCOB_REM_PROCESSADOS		as '/u02/tools/etl_bi/etl/hcob_rem/processados'
create or replace directory HCOB_REM_ERRO				as '/u02/tools/etl_bi/etl/hcob_rem/erro'
create or replace directory HCOB_REM					as '/u02/tools/etl_bi/etl/hcob_rem'
create or replace directory HCOB_CNAB_PROCESSADOS		as '/u02/tools/etl_bi/etl/hcob_cnab/processados'
create or replace directory HCOB_CNAB_ERRO				as '/u02/tools/etl_bi/etl/hcob_cnab/erro'
create or replace directory HCOB_CNAB					as '/u02/tools/etl_bi/etl/hcob_cnab'
create or replace directory QUIT_COB_REM				as '/u02/tools/etl_bi/etl/cob_rem'
create or replace directory HQUIT_SD_RET				as '/u02/tools/etl_bi/etl/hquit_ret'
create or replace directory HQUIT_SD_REM_PROCESSADOS	as '/u02/tools/etl_bi/etl/hquit_rem/processados'
create or replace directory HQUIT_SD_REM_ERRO			as '/u02/tools/etl_bi/etl/hquit_rem/erro'
create or replace directory HQUIT_SD_REM				as '/u02/tools/etl_bi/etl/hquit_rem'
create or replace directory HQUIT_SD_CNAB_PROCESSADOS	as '/u02/tools/etl_bi/etl/hquit_cnab/processados'
create or replace directory HQUIT_SD_CNAB				as '/u02/tools/etl_bi/etl/hquit_cnab'
create or replace directory QUIT_SD_CNAB_TESTE			as '/u02/tools/etl_bi/etl/quit_cnab/teste'
create or replace directory QUIT_SD_CNAB_PROCESSADOS	as '/u02/tools/etl_bi/etl/quit_cnab/processados'
create or replace directory QUIT_SD_REM_PROCESSADOS		as '/u02/tools/etl_bi/etl/quit_rem/processados'
create or replace directory QUIT_SD_CNAB				as '/u02/tools/etl_bi/etl/quit_cnab'
create or replace directory QUIT_SD_REM_ERRO			as '/u02/tools/etl_bi/etl/quit_rem/erro'
create or replace directory QUIT_SD_CNAB_ERRO			as '/u02/tools/etl_bi/etl/quit_cnab/erro'
create or replace directory HQUIT_SD_CNAB_ERRO			as '/u02/tools/etl_bi/etl/hquit_cnab/erro'
create or replace directory AVERB						as '/u02/tools/ftp/averb'
create or replace directory QUIT_SD_REM					as '/u02/tools/etl_bi/etl/quit_rem'
create or replace directory QUIT_SD_RET					as '/u02/tools/etl_bi/etl/quit_ret'
create or replace directory ATU_TOOLSPP1				as '/u02/tools/atu_toolspp/'
create or replace directory ATU_TOOLSPP2				as '/u02/tools/atu_toolspp/'
create or replace directory PRICE						as '/u02/tools/price'
create or replace directory INC_124526					as '/u02/tools/bkp_tbls_124526'
create or replace directory INM_IFRS					as '/u02/tools/inm_ifrs'
create or replace directory FIDIC2						as '/u02/tools/ftp/fidic2'
create or replace directory BKP_TBL_GMUD				as '/u02/tools/bkp_tbl_gmud'
create or replace directory ETL_BI						as '/u02/tools/etl_bi/etl'
create or replace directory TEC_CPP						as '/u02/tools/ftp/tec_cpp'
create or replace directory REPASSE_RETORNO				as '/u02/tools/ftp/repasse/retorno'
create or replace directory REPASSE_REMESSA				as '/u02/tools/ftp/repasse/remessa'
create or replace directory REPASSE_FIDIC				as '/u02/tools/ftp/repasse/fidic'
create or replace directory RECEB						as '/u02/tools/ftp/receb'
create or replace directory OUTBOUND					as '/u02/tools/ftp/utl_file/outbound'
create or replace directory INBOUND						as '/u02/tools/ftp/utl_file/inbound'
create or replace directory FIDIC						as '/u02/tools/ftp/fidic'

spool off