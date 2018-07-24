spool 00_main.log append

set echo on timing on feedback on


@@01_create_tbls.sql

@@02_create_retag_roles.sql

@@03_create_not_human_users.sql

@@04_create_human_users.sql

@@05_directories.sql
@@06_pre_impdp.sql

spool off