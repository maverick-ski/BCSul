-- -----------------------------------------------------------------------------------
-- File Name    : synonym_public_ddl.sql
-- Author       : Pierre Ribeiro
-- Description  : Creates the DDL for public synonyms.
-- Call Syntax  : @synonym_public_ddl
-- Last Modified: 
-- -----------------------------------------------------------------------------------
SET LONG 20000 LONGCHUNKSIZE 20000 PAGESIZE 0 LINESIZE 1000 FEEDBACK OFF VERIFY OFF TRIMSPOOL ON

BEGIN
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'SQLTERMINATOR', true);
   DBMS_METADATA.set_transform_param (DBMS_METADATA.session_transform, 'PRETTY', true);
END;
/

spool create_public_tbl_synonyms.sql

-- FINPAC TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='FINPAC'
and   b.OWNER='FINPAC'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- FINPAC_CUSTOM TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='FINPAC_CUSTOM'
and   b.OWNER='FINPAC_CUSTOM'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- MIDDLE TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='MIDDLE'
and   b.OWNER='MIDDLE'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- PANDATA TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='PANDATA'
and   b.OWNER='PANDATA'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SDBANCO TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SDBANCO'
and   b.OWNER='SDBANCO'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SDIMIO TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SDIMIO'
and   b.OWNER='SDIMIO'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SPB_BRIDGE TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SPB_BRIDGE'
and   b.OWNER='SPB_BRIDGE'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

spool off

SET PAGESIZE 14 FEEDBACK ON VERIFY ON