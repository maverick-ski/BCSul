spool post_migration_grants.log append

set echo on timing on feedback on


@@grants_novos_for_filas.sql

@@grants_novos_for_roles.sql

@@grants_novos_for_users.sql

@@grants_novos_for_users_sistemicos.sql

spool off