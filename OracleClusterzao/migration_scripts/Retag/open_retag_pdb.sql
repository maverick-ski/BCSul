spool open_matera.log
set feedback on echo on timing on

alter pluggable database retag open instances=ALL;

spool off