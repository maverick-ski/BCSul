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

-- RETAG_INSS TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='RETAG_INSS'
and   b.OWNER='RETAG_INSS'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- RETAGUARDA TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='RETAGUARDA'
and   b.OWNER='RETAGUARDA'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SCPTOOLS TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SCPTOOLS'
and   b.OWNER='SCPTOOLS'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SCPTOOLS1 TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SCPTOOLS1'
and   b.OWNER='SCPTOOLS1'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

-- SUPORTERJ TABLES

SELECT DBMS_METADATA.get_ddl ('SYNONYM', a.synonym_name, a.owner) 
from dba_synonyms a, dba_objects b
where a.owner='PUBLIC'
and   b.OBJECT_TYPE='TABLE'
and   a.table_owner='SUPORTERJ'
and   b.OWNER='SUPORTERJ'
and   a.table_owner=b.owner
and   a.table_name=b.OBJECT_NAME;

spool off

SET PAGESIZE 14 FEEDBACK ON VERIFY ON