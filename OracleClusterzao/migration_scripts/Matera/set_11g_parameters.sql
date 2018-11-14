spool set11gParameters.log
set feedback on echo on timing on

alter system set sga_max_size=90G scope=spfile;
--alter system set shared_pool_size=50G scope=spfile sid='*';
alter system set pga_aggregate_target=30G scope=spfile sid='*';
alter system set "_optimizer_compute_index_stats"=FALSE scope=spfile sid='*';
alter system set cursor_sharing='FORCE' scope=spfile sid='*';
alter system set optimizer_mode='FIRST_ROWS_10' scope=spfile sid='*';
alter system set optimizer_index_cost_adj=15 scope=spfile sid='*';
alter system set optimizer_index_caching=85 scope=spfile sid='*';
alter system set "_optim_peek_user_binds"=FALSE scope=spfile sid='*';
alter system set sec_case_sensitive_logon=false scope=spfile;

spool off
