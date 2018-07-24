spool recompile.log append;

begin
  for a in 1..10 loop
    @?/rdbms/admin/utlrp.sql
  end loop;
end;
/

spool off