spool pre_impdp.log

set echo on
set timing on

-- Grant on sys.DBMS_AQADM

grant execute on DBMS_AQADM to public;
grant execute on sys.DBMS_AQADM to public;

-- create_job_class

BEGIN
DBMS_SCHEDULER.CREATE_JOB_CLASS (
   job_class_name              =>  'JOBS_FINPAC3',
   service                     =>  'matera', 
   comments                    =>  'CLASS PARA JOBS QUE RODAM NO FINPAC3');
END;
/

spool off
