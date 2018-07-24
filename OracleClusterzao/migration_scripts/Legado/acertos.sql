spool acertos.log
set echo on
create user APP_DBA identified by values '6E4702300F3B63DE' default tablespace USER_DATA temporary tablespace TEMP;
create user DB_ONLINE identified by values 'D15FAE9257A53E4C' default tablespace USER_DATA temporary tablespace TEMP;
create user DB_OPERATOR identified by values 'A003FD1888C46F03' default tablespace USER_DATA temporary tablespace TEMP;
create user OPERADOR identified by values '33867263782462E8' default tablespace USER_DATA temporary tablespace TEMP;
create user FINPAC_CP identified by values '8DE8FBA773DFD0BE' default tablespace USER_DATA temporary tablespace TEMP;
create user BCSCADASTRO identified by values '5B83847A82CD2AAE' default tablespace USER_DATA temporary tablespace TEMP;
create user VBUAS identified by values 'E83712833DE383FC' default tablespace USER_DATA temporary tablespace TEMP;
create user LVLIMA identified by values 'EA57C54B4A4C4C60' default tablespace USER_DATA temporary tablespace TEMP;
--create user COMISSAO2 identified by values C0M1SSA02 default tablespace USER_DATA temporary tablespace TEMP;
spool off