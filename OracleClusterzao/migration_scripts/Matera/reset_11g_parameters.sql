spool set11gParameters.log
set feedback on echo on timing on

alter system reset shared_pool_size scope=spfile sid='*';

spool off
