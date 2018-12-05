spool setParameters.log
set feedback on echo on timing on

show con_name

alter system set sga_target=96636764160 container=current scope=spfile sid='*';
alter system set sga_min_size=26843545600 container=current scope=spfile sid='*';
alter system set shared_pool_size=26843545600 container=current scope=spfile sid='*';
alter system set "_optimizer_compute_index_stats"=FALSE container=current scope=spfile sid='*';
alter system set cursor_sharing='FORCE' container=current scope=spfile sid='*';
alter system set optimizer_mode='FIRST_ROWS_10' container=current scope=spfile sid='*';
alter system set optimizer_index_cost_adj=15 container=current scope=spfile sid='*';
alter system set optimizer_index_caching=85 container=current scope=spfile sid='*';
alter system set "_optim_peek_user_binds"=FALSE container=current scope=spfile sid='*';

spool off
