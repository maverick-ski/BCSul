spool setShared_pool.log
set feedback on echo on timing on

alter system set shared_pool_size=50G scope=memory sid='*';

spool off