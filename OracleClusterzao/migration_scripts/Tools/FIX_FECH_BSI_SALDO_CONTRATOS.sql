DROP TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS";
CREATE TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" 
   (
    "CONTRATO" VARCHAR2(9) NOT NULL ENABLE, 
	"DT_SALDO" DATE NOT NULL ENABLE, 
	"NUM_SEQ_CESSAO" NUMBER(9,0) DEFAULT 0 NOT NULL ENABLE, 
	"CONTRATO_CESSAO" CHAR(9) DEFAULT '000000000' NOT NULL ENABLE, 
	"EMP" CHAR(2) NOT NULL ENABLE, 
	"PRODUTO" VARCHAR2(2) NOT NULL ENABLE, 
	"TP_PESSOA" CHAR(1) NOT NULL ENABLE, 
	"PRE_POS" CHAR(1) NOT NULL ENABLE, 
	"CURSO_ANTERIOR" CHAR(1) NOT NULL ENABLE, 
	"CURSO_ATUAL" CHAR(1) NOT NULL ENABLE, 
	"CPF_CGC" VARCHAR2(14) NOT NULL ENABLE, 
	"NOME_CLIENTE" VARCHAR2(40) NOT NULL ENABLE, 
	"VAL_SALDO_ANTERIOR" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_IMPL_TOT_RCB" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_CANCE_TOT_RCB" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_CANCE_RENDAS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_CANCE_PERM" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RCB_PRINC" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RCB_APRDO_PERM" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RCB_DIF_CAMBIAL" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RAB_PRINC" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RAB_APRDO_PERM" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RAB_DIF_CAMBIAL" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RENDA_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_PERM_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_SALDO_ATUAL" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_SALDO_ANTERIOR" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_EST_RENDAS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_COMPL_RENDAS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_RENDAS_A_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_PERM_PROV" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_IMPL_RENDAS_A_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_CANCE_RENDAS_A_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_CANCE_RENDAS_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RENDA_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_EST_RENDAS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_COMPL_RENDAS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_RENDAS_A_APROP" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_PERM_PROV" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_PERM_PROV" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RENDA_RECONHECIDA" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RENDA_A_APROP_POS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_RENDA_RECONHECIDA_POS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_RENDA_RECONHECIDA_POS" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_SALDO_ATUAL" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"COD_NIVEL_ANT" VARCHAR2(2), 
	"COD_NIVEL_ATU" VARCHAR2(2) NOT NULL ENABLE, 
	"NUM_PERC_PDD" NUMBER(5,2) DEFAULT 0, 
	"VAL_PDD_ANT" NUMBER(14,5) DEFAULT 0, 
	"VAL_PDD" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"NUM_DIAS_ATRASO" NUMBER(*,0) DEFAULT 0 NOT NULL ENABLE, 
	"ST_TIPO_CESSAO" CHAR(1), 
	"VAL_AJUSTE_CREDITO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_AJUSTE_DEBITO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_AJUSTE_CREDITO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_AJUSTE_DEBITO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"NUM_PERC_PDD_ANT" NUMBER(14,5) DEFAULT 0, 
	"RDA_CANCE_PERM_PROV" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RENDA_APROP_ACC" NUMBER DEFAULT 0, 
	"VAL_PERM_APROP_ACC" NUMBER DEFAULT 0, 
	"RDA_RENDA_APROP_ACC" NUMBER DEFAULT 0, 
	"RDA_PERM_PROV_ACC" NUMBER DEFAULT 0, 
	"RDA_RENDA_A_APROP_POS_ACC" NUMBER DEFAULT 0, 
	"RDA_RENDA_RECONHECIDA_ACC" NUMBER DEFAULT 0, 
	"NUM_DIAS_ATRASO_ACORDO" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE, 
	"NUM_DIAS_DIF_REVERSAO" NUMBER(5,0) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_REVERSAO_CESSAO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_REVERSAO_CESSAO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RAB_DESC_PRO_RATA" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RCB_DESC_PRO_RATA" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RENDA_APROP_ESTORNO" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RDA_PRC_BAIXADA_EM_PERDAS" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RDA_PRC_REAB_EM_PERDAS" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_LIMITE_DISPONIVEL" NUMBER(14,5) DEFAULT 0 NOT NULL ENABLE, 
	"DT_LIMITE" DATE, 
	"COD_PROC" VARCHAR2(3) DEFAULT '000', 
	"VAL_CESSAO_COM_COOB" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_CESSAO_SEM_COOB" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"COD_CONTRATO_CEDENTE" CHAR(9) DEFAULT '000000000' NOT NULL ENABLE, 
	"COD_CONTRATO_ORIGEM" CHAR(9) DEFAULT '000000000' NOT NULL ENABLE, 
	"VAL_RCB_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_TRANSFERENCIA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RECOMPRA" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_EST_RECOMPRA" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_EST_TRANSF_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_EST_TRANSF_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_BAIXA_RENDAS_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_TRANSFERENCIA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RECOMPRA" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_EST_RECOMPRA" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_RECOMPRA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_RECOMPRA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_EST_RECOMPRA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"RDA_EST_RECOMPRA_CESSAO" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"FL_CONTABILIZA_CESSAO" CHAR(1), 
	"PLANO_CONTAS" VARCHAR2(7), 
	"RDA_PERM_PROV_EST" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	"VAL_PERM_APROP_EST" NUMBER(20,5) DEFAULT 0 NOT NULL ENABLE, 
	 CONSTRAINT "BSI_SALDO_CONTRATOS_PK" PRIMARY KEY ("CONTRATO", "DT_SALDO", "NUM_SEQ_CESSAO", "CONTRATO_CESSAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" ;
 
  CREATE UNIQUE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PK" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("CONTRATO", "DT_SALDO", "NUM_SEQ_CESSAO", "CONTRATO_CESSAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I1" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I10" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("CONTRATO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I11" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("DT_SALDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I12" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("EMP", "DT_SALDO", SUBSTR("CONTRATO",7,1)) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I2" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("NUM_DIAS_ATRASO", "EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I3" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("DT_SALDO", "CPF_CGC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I4" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("EMP", "VAL_SALDO_ATUAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I5" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("CPF_CGC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I6" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("DT_SALDO", "EMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I7" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("COD_CONTRATO_CEDENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I8" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("CONTRATO_CESSAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  CREATE INDEX "FIX_FECH"."BSI_SALDO_CONTRATOS_PART_I9" ON "FIX_FECH"."BSI_SALDO_CONTRATOS" ("EMP", "CPF_CGC", "DT_SALDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
  PARALLEL 8 ;
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" ADD CONSTRAINT "BSI_SALDO_CONTRATOS_PK" PRIMARY KEY ("CONTRATO", "DT_SALDO", "NUM_SEQ_CESSAO", "CONTRATO_CESSAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD"  ENABLE;
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("CONTRATO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("DT_SALDO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("NUM_SEQ_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("CONTRATO_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("EMP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("PRODUTO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("TP_PESSOA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("PRE_POS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("CURSO_ANTERIOR" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("CURSO_ATUAL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("CPF_CGC" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("NOME_CLIENTE" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_SALDO_ANTERIOR" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_IMPL_TOT_RCB" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_CANCE_TOT_RCB" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_CANCE_RENDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_CANCE_PERM" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RCB_PRINC" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RCB_APRDO_PERM" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RCB_DIF_CAMBIAL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RAB_PRINC" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RAB_APRDO_PERM" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RAB_DIF_CAMBIAL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RENDA_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_PERM_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_SALDO_ATUAL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_SALDO_ANTERIOR" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_EST_RENDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_COMPL_RENDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_RENDAS_A_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_PERM_PROV" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_IMPL_RENDAS_A_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_CANCE_RENDAS_A_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_CANCE_RENDAS_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RENDA_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_EST_RENDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_COMPL_RENDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_RENDAS_A_APROP" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_PERM_PROV" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_PERM_PROV" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RENDA_RECONHECIDA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RENDA_A_APROP_POS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_RENDA_RECONHECIDA_POS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_RENDA_RECONHECIDA_POS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_SALDO_ATUAL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("COD_NIVEL_ATU" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_PDD" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("NUM_DIAS_ATRASO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_AJUSTE_CREDITO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_AJUSTE_DEBITO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_AJUSTE_CREDITO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_AJUSTE_DEBITO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_CANCE_PERM_PROV" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("NUM_DIAS_ATRASO_ACORDO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("NUM_DIAS_DIF_REVERSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_REVERSAO_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_REVERSAO_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RAB_DESC_PRO_RATA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RCB_DESC_PRO_RATA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RENDA_APROP_ESTORNO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RDA_PRC_BAIXADA_EM_PERDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RDA_PRC_REAB_EM_PERDAS" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_LIMITE_DISPONIVEL" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_CESSAO_COM_COOB" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_CESSAO_SEM_COOB" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("COD_CONTRATO_CEDENTE" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("COD_CONTRATO_ORIGEM" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RCB_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_TRANSFERENCIA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RECOMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_EST_RECOMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_EST_TRANSF_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_EST_TRANSF_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_BAIXA_RENDAS_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_TRANSFERENCIA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RECOMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_EST_RECOMPRA" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_RECOMPRA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_RECOMPRA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_EST_RECOMPRA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_EST_RECOMPRA_CESSAO" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("RDA_PERM_PROV_EST" NOT NULL ENABLE);
 
  ALTER TABLE "FIX_FECH"."BSI_SALDO_CONTRATOS" MODIFY ("VAL_PERM_APROP_EST" NOT NULL ENABLE);
 
  GRANT SELECT ON "FIX_FECH"."BSI_SALDO_CONTRATOS" TO "RL_SUPORTE_TI";
 
  GRANT DELETE ON "FIX_FECH"."BSI_SALDO_CONTRATOS" TO "RL_SUPORTE_TI_DML";
 
  GRANT INSERT ON "FIX_FECH"."BSI_SALDO_CONTRATOS" TO "RL_SUPORTE_TI_DML";
 
  GRANT UPDATE ON "FIX_FECH"."BSI_SALDO_CONTRATOS" TO "RL_SUPORTE_TI_DML";